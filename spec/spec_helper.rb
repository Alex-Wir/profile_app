# frozen_string_literal: true

require 'rack/test'
ENV['RACK_ENV'] = 'test'

require File.expand_path('../app.rb', __dir__)

module RSpecMixin
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }
