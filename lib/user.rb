require 'bcrypt' #bcrypt generates the password hash
class User

	include DataMapper::Resource

	property :id, Serial
	property :email, String
	#this stores both password and salt
	#it's text and not string because string only holds 50 chars
	#which is not enough for hash and salt
	property :password_digest, Text

	#password digest creates gibberish that is saved in the database
	#provided by bcrypt, which has the password hash and salt. It is 
	#saved to database instead of plain password for security reasons.

	def password=(password)
		self.password_digest = BCrypt::Password.create(password)
	end

end