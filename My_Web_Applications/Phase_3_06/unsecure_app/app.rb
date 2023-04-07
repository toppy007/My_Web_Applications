require 'sinatra/base'
require "sinatra/reloader"

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    return erb(:index)
  end

  post '/hello' do
    if validation
      status 400
      return ''
    end
    @name = params[:name]

    return erb(:hello)
  end

  def validation
    return true if params[:name].include? '<script>'
    return false
  end
end
