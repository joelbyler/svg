require 'bundler'
require 'svg/circle'
require 'svg/ellipse'
require 'svg/feature'
require 'svg/line'
require 'svg/point'
require 'svg/polygon'
require 'svg/polyline'
require 'svg/rectangle'
require 'svg/rgb'
require 'svg/style'

Bundler.require(:default, :development)

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

include Svg

RSpec.configure do |config|
end
