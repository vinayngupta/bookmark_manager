class Link
	include DataMapper::Resource

	property :id,		Serial #Serial means that it will be auto-incremented for each record
	property :title,	String
	property :url, 		String

end