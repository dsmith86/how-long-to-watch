require 'sinatra'
require 'sinatra_more/routing_plugin'
require 'net/http'
require 'net/https'
require 'base64'
require 'json'
require './config/environments'

class Application < Sinatra::Base
	register SinatraMore::RoutingPlugin

	map :watchlist do |namespace|
		namespace.map(:shows).to('/users/:user/watchlist/shows')
	end

	namespace :watchlist do

		get :shows do
			"This will display a list of shows."
		end

	end

end

require_relative 'helpers/init'