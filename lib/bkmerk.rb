require 'sinatra/base'

class BkMerk < Sinatra::Base
  get '/' do
    'Hello BkMerk!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
