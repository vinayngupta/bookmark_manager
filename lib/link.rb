# This class corresponds to a table in the database
# We can use it to manipulate the data

class Link
	 # this makes the instances of this class Datamapper resources
	include DataMapper::Resource

	property :id,		Serial #Serial means that it will be auto-incremented for each record
	property :title,	String
	property :url, 		String


end