require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'rspec'
require 'faker'
require 'site_prism'
require 'allure-cucumber'

include AllureCucumber::DSL

AllureCucumber.configure do |c|
  c.output_dir = 'logs/allure'
end

TEST_ENV = ENV['ENVIRONMENT']

DATA = YAML.load_file(File.dirname(__FILE__) + '/env.yaml')

Capybara.register_driver :selenium do |app|
  Capybara::Poltergeist::Driver.new(
    app,
    options = {
      js_errors: false
    }
  )
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = DATA['url'][TEST_ENV]
end

Capybara.default_max_wait_time = 5