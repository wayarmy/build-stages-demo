# frozen_string_literal: true

require './web'
require 'test/unit'
require 'rack/test'

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
    assert_equal 'Hello, world!', last_response.body
  end
end
