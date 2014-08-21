class Application < Sinatra::Base

	map :watchlist do |namespace|
		namespace.map(:shows).to('/users/:user/watchlist/shows')
	end

	namespace :watchlist do

		get :shows do
			Trakt.shows_watchlist(params[:user]).to_json
		end

	end

end