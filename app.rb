require 'sinatra'
require 'sinatra_more/routing_plugin'
require 'net/http'
require 'net/https'
require 'base64'
require 'json'
require './config/environments'

class Application < Sinatra::Base
	register SinatraMore::RoutingPlugin
	
	get '/' do
		"Hello World!"
	end

end