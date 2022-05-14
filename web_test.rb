# frozen_string_literal: true

require './web'
require 'coveralls'
require 'test/unit'
require 'rack/test'

Coveralls.wear!

set :environment, :test

# MyAppTest define the test case for my app
class MyAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hi_returns_hello_world
    get '/'
    assert last_response.ok?
    assert_match 'Hello', last_response.body
  end
end
