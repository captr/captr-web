require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.register_driver :ember do |app|
  Capybara::Poltergeist::Driver.new(app, phantomjs_logger: StringIO.new)
end

Capybara.default_driver = :ember

