env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
require './lib/link' #needs to be done after DataMapper is initialized
DataMapper.finalize
DataMapper.auto_upgrade!

