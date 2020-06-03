require 'rack/unreloader'
Unreloader = Rack::Unreloader.new{App}
require 'roda'
Unreloader.require './app.rb'
run Unreloader