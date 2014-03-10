#ENV['RACK_ENV'] = 'test'

require_relative '../../api/app'
require 'test/unit'
require 'rack/test'

class LaunchesTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    SmartilleryApi
  end

  def test_launches_invalid_date
    get '/launches?since=some_invalid_date'
    assert last_response.ok?
  end
end