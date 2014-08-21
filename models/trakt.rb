class Trakt
	include HTTParty
	base_uri "http://api.trakt.tv/"
	format :json

	@@api_key = ENV['TRAKT_API_KEY']

	def self.watchlist (user, list_type)
		case list_type
		when :shows
			self.shows_watchlist(user)
		else
			raise MethodError
		end
	end

	def self.shows_watchlist (user)
		shows = get "/user/watchlist/shows.json/#{@@api_key}/#{user}"

		watchlist = Array.new

		shows.each do |show|
			show_details = Hash.new

			show_details[:id] = show['url'].sub(/^.+\//, '')
			show_details[:image_url] = show['images']['poster']

			watchlist << show_details
		end

		watchlist
	end
end