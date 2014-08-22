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

		shows.each do |show_details|
			show_id = show_details['url'].sub(/^.+\//, '')

			show = Show.get(show_id)

			if show.nil?

				show = Show.new

				show[:id] = show_id
				show[:image_uri] = show_details['images']['poster']
				show[:episode_duration] = show_details['runtime']

				show[:episode_count] = self.number_of_episodes(show_id)
				show[:expiration_date] = DateTime.week_from_now

			elsif show[:expiration_date].past?

				show[:episode_count] = self.number_of_episodes(show_id)
				show[:expiration_date] = DateTime.week_from_now

			end

			watchlist << show
			show.save
		end

		watchlist
	end

	def self.number_of_episodes(id)
		seasons = get "/show/seasons.json/#{@@api_key}/#{id}"

		episode_count = 0

		seasons.each do |season|
			episode_count += season['episodes']
		end

		episode_count
	end
end