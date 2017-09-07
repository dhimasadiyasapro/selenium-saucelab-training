require 'cucumber/rails'
require "sauce/cucumber"
require "sauce/connect"

Capybara.run_server = false
Capybara.register_driver(:selenium){ |app| Capybara::Selenium::Driver.new(app, {:browser => :chrome })}
#Capybara.default_driver = :selenium
Capybara.default_driver = :sauce
Capybara.javascript_driver = :sauce
#Capybara.server_port = 80

Sauce.config do |c|
  #c[:sauce_connect_4_executable] = "/sc-4.4.8-linux/bin/sc"
  #c[:sauce_connect_4_executable] = "/usr/local/bin/sc"
  c[:start_tunnel] = true
  c[:skip_connection_test] = true
#  c[:start_local_application] = false
#  c[:application_host] = "ondemand.saucelabs.com"
#  c[:application_port] = "80"
  c[:browsers] = ["Windows 10", "Chrome", "60"]
end
