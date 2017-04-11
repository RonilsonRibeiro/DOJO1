require 'rspec'
require 'selenium/webdriver'
require 'cucumber'
require	'capybara/dsl'

include Capybara::DSL



Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
	config.current_driver = :selenium
	config.default_max_wait_time = 3
	Capybara.page.driver.browser.manage.window.maximize
end
