ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActionDispatch::IntegrationTest
  include Capybara::DSL

  Capybara.app = SeatMyself::Application

  teardown do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
