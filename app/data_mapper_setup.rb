#must require models here othewise Rakefile is usless
require_relative './lib/link'
require_relative './lib/tag'
require_relative './lib/user'

env = ENV["RACK_ENV"] || "development"
#this tells datamapper to use postgres on localhost.
DataMapper.setup(:default, "postgres://hubcbhheqyiixo:FedjyZzLt7Qr7IZzb1FIqsmfXI@ec2-54-225-127-246.compute-1.amazonaws.com:5432/dd74fekhmqhtb5")
#after declaring models you need to finalize them
DataMapper.finalize

#Removing below because Rakefile now in place to run .auto_upgrade or .auto_migrate as needed
#DataMapper.auto_upgrade!

# auto_upgrade makes non-destructive changes. It your tables don't exist, they will be created
# but if they do and you changed your schema (e.g. changed the type of one of the properties)
# they will not be upgraded because that'd lead to data loss.
# To force the creation of all tables as they are described in your models, even if this
# leads to data loss, use auto_migrate:
# DataMapper.auto_migrate!
# Finally, don't forget that before you do any of that stuff, you need to create a database first.