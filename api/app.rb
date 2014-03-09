require 'rack'
require 'sinatra'

class SmartilleryApi < Sinatra::Application
  require_relative 'routes/init'
end