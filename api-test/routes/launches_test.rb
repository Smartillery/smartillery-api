#ENV['RACK_ENV'] = 'test'

require_relative '../../api/app'
require 'test/unit'
require 'rack/test'

class LaunchesTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_launches_does_stuff
    get '/launches'
    assert last_response.ok?
  end
end