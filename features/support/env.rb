require 'capybara'
require 'capybara/cucumber'
require 'capybara/mechanize'

Capybara.register_driver :mechanize do |app|
  # Capybara::Mechanize::Driver.new app   # not good
  Capybara::Mechanize::Driver.new(proc {})
end

Capybara.configure do |config|
  config.default_driver = :mechanize
end
