require 'rack'
require 'sinatra/base'
require 'sinatra/param'
require 'json'

class SmartilleryApi < Sinatra::Base
  helpers Sinatra::Param

  before do
    content_type :json
  end

  #it sucks having these here, but doing it otherwise will take too long
  get '/players/?' do
    'return all players'
  end

  get '/players/me/?' do
    'return current user'
  end

  put 'players/me/location/?' do
    'update current user location'
  end

  get '/players/:id/?' do
    "load user with id #{params[:id]}"
    end

  get '/launches/?' do
    param :since, DateTime
    if params[:since]
      "return all launches since #{params[:since]}"
    else
      'return all launches'
    end
  end

  post 'launch/?' do
    'add new launch'
    end
end