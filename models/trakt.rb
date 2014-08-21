class Trakt
	include HTTParty

	@@api_key = ENV['TRAKT_API_KEY']
	@@base_uri = "http://api.trakt.tv/"

	def self.shows_watchlist (user)
		get "#{@@base_uri}/user/watchlist/shows.json/#{@@api_key}/#{user}"
	end
end