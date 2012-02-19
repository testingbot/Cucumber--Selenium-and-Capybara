require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium/webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.firefox  
caps.version = "8"  
caps.platform = :WINDOWS 

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => "http://key:secret@hub.testingbot.com:4444/wd/hub",
    :desired_capabilities => caps)
end
