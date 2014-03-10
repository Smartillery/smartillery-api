require 'rack'
require 'sinatra/base'
require 'sinatra/param'
require 'json'

require_relative 'routes/players'
require_relative 'routes/launches'

class SmartilleryApi < Sinatra::Base
  set :root, File.dirname(__FILE__)

  helpers Sinatra::Param

  before do
    content_type :json
  end

  register Smartillery::Routing::Players
  register Smartillery::Routing::Launches
end