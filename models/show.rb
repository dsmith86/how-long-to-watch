class Show
	include DataMapper::Resource

	property :id, Text, :key => true
	property :title, Text
	property :episode_duration, Integer
	property :episode_count, Integer
	property :total_duration, Integer
	property :image_uri, URI
	property :expiration_date, EpochTime

end