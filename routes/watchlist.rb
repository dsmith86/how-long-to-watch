class Application < Sinatra::Base

	map :watchlist do |namespace|
		namespace.map(:shows).to('/users/:user/watchlist/shows')
	end

	namespace :watchlist do

		get :shows do
			begin
				Trakt.watchlist(params[:user], :shows).to_json
			rescue
				{:code => 408, :error => "Request has timed out"}.to_json
			end
		end

	end

end