# -*- encoding: utf-8 -*-
require File.expand_path('../lib/svg/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'svg'
  gem.version     = Svg::VERSION
  gem.date        = '2012-10-17'
  gem.summary     = "Intended to be a gem which will help to build complex Simple Vector Graphics (SVG)"
  gem.description = "Intended to be a gem which will help to build complex Simple Vector Graphics (SVG)"
  gem.authors     = ["Joel Byler"]
  gem.email       = 'joelbyler@gmail.com'
  gem.files       = ["lib/svg.rb"]
  gem.homepage    ='https://github.com/joelbyler/svg'

  gem.add_development_dependency 'rspec', '>= 2.11.0'

end