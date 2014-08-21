class Application < Sinatra::Base

	map :watchlist do |namespace|
		namespace.map(:shows).to('/users/:user/watchlist/shows')
	end

	namespace :watchlist do

		get :shows do
			Trakt.watchlist(params[:user], :shows).to_json
		end

	end

end