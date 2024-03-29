require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end

  get '/hello' do
    name = params[:name]
    return "Hello #{name}"
  end

  post '/submit' do
    name = params[:name]
    message = params[:message]
    return "Hello #{message} #{name}"
  end

  get '/names' do
    name = params[:name]
    return "#{name}"
  end
end