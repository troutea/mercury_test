begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'rubygems'
require 'active_support'
Capybara.default_driver = :selenium
#Capybara.app_host = 'http://www.google.com'
Capybara.app_host = 'https://cmt-qa.mercury.ibahn.com'
World(Capybara)     
