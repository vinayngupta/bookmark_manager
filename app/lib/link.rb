# This class corresponds to a table in the database
# We can use it to manipulate the data

class Link
	 # this makes the instances of this class Datamapper resources
	include DataMapper::Resource

	has n, :tags, :through => Resource

	#this block says what the model will have 
	#we include a unique field id in case of dupe records

	property :id,		Serial #Serial means that it will be auto-incremented for each record
	property :title,	String
	property :url, 		String
	
end 