ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

end

DatabaseCleaner.strategy = :truncation

class ActionDispatch::IntegrationTest
  include Capybara::DSL

  Capybara.app = SeatMyself::Application

  Capybara.javascript_driver = :webkit

  self.use_transactional_fixtures = false

  teardown do
    DatabaseCleaner.clean
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  def setup_signed_in_user
    pass = "this-is-a-password"
    user = FactoryGirl.create :user, password: pass
    visit '/session/new'

    fill_in "email", with: user.email
    fill_in "password", with: pass
    click_button "Login"
  end
end
