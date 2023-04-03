require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  get '/hello' do
    name = params[:name] # The value is 'David'
  
    # Do something with `name`...
    return "Hello #{name}"
  end

  post '/submit' do
    name = params[:name] # The value is 'David'
    message = params[:message]
    # Do something with `name`...
    return "Hello #{name} you just sent the message #{message}"
  end
end