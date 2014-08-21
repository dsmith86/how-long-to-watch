require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, ENV['HLTW_DATABASE_URL'] || 'postgres://localhost/mydb')

require_relative 'trakt'
require_relative 'show'

DataMapper.finalize
DataMapper.auto_upgrade!