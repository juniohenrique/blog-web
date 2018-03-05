require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'faker'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  Capybara::Poltergeist::Driver.new(app, options = { js_errors: false })
end

Capybara.configure do |c|
  c.default_driver = :selenium
  c.app_host = 'https://blog-web-testing.herokuapp.com'
end

Capybara.default_max_wait_time = 10
