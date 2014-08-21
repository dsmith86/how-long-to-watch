require 'sinatra'
require 'sinatra_more/routing_plugin'
require 'net/http'
require 'net/https'
require 'httparty'
require 'base64'
require 'json'
require './config/environments'

class Application < Sinatra::Base
	register SinatraMore::RoutingPlugin

end

require_relative 'models/init'
require_relative 'routes/init'