require 'data_mapper'
require 'dm-postgres-adapter'

DataMapper.setup(:default, ENV['HLTW_DATABASE_URL'] || 'postgres://localhost/mydb')
DataMapper::Model.raise_on_save_failure = false

require_relative 'trakt'
require_relative 'show'

DataMapper.finalize
DataMapper.auto_upgrade!