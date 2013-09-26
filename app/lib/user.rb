require 'bcrypt' #bcrypt generates the password hash
class User
	attr_reader :password
	attr_accessor :password_confirmation

	include DataMapper::Resource

	property :id, Serial
	property :email, String, :unique => true, :message => "This email is already taken"
	#this stores both password and salt
	#it's text and not string because string only holds 50 chars
	#which is not enough for hash and salt
	property :password_digest, Text

	validates_confirmation_of :password, :message => "Sorry, your passwords don't match"
	validates_uniqueness_of :email
	validates_format_of :email, :as => :email_address, :message => "Please enter a valid email address"

	#password digest creates gibberish that is saved in the database
	#provided by bcrypt, which has the password hash and salt. It is 
	#saved to database instead of plain password for security reasons.

	def password=(password)
		@password = password
		self.password_digest = BCrypt::Password.create(password)
	end

	def self.authenticate(email, password)
		user = first(:email => email)
		
		#if this user exists and the password matches the one we have
		#password_digest for then all is fine.

		  # The Password.new returns an object that overrides the ==
		  # method. Instead of comparing two passwords directly
		  # (which is impossible because we only have a one-way hash)
		  # the == method calculates the candidate password_digest from
		  # the password given and compares it to the password_digest
		  # it was initialised with.
		  # So, to recap: THIS IS NOT A STRING COMPARISON
		  
		if user && BCrypt::Password.new(user.password_digest) == password
			#return the user
			user
		else
			nil
		end
	end

end