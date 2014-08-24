require 'sinatra'
require 'sinatra_more/routing_plugin'
require 'net/http'
require 'net/https'
require 'httparty'
require 'typhoeus'
require 'base64'
require 'rack-timeout'
require 'json'
require 'date'
require './config/environments'

class Application < Sinatra::Base
	register SinatraMore::RoutingPlugin
	use Rack::Timeout
	Rack::Timeout.timeout = 10

	before do
		content_type :json    
		headers 'Access-Control-Allow-Origin' => '*', 
		        'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']  
	end

end

require_relative 'helpers/init'
require_relative 'models/init'
require_relative 'routes/init'