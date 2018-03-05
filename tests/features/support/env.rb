require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'site_prism'

Capybara.configure do |c|
  c.default_driver = :selenium
  c.app_host = 'https://blog-web-testing.herokuapp.com'
end

Capybara.default_max_wait_time = 10
