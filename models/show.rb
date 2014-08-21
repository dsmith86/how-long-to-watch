class Show
	include DataMapper::Resource

	property :slug, String, :key => true
	property :image_uri, URI
	property :expiration_date, EpochTime
	
end