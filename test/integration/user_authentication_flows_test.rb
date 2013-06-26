require 'test_helper'

class UserAuthenticationFlowsTest < ActionDispatch::IntegrationTest
  
  test "successful registration" do
    visit "/users/new"
    assert_equal new_user_path, current_path

    assert find('.navbar').has_link?('Sign Up')

    user = FactoryGirl.build(:user)

    fill_in "user[email]", :with => user.email
    fill_in "user[first_name]", :with => user.first.first_name
    fill_in "user[last_name]", :with => user.last_name
    fill_in "user[password]", :with => user.password
    click_button "Create Account"

    assert_equal root_path, current_path

    assert page.has_content?("Account Created")

    assert find('.navbar').has_no_link?('Sign Up')
    assert find('.navbar').has_link?('Logout')
  end

  test "failed registration" do
    visit "/users/new"
    user = FactoryGirl.build(:user)

    fill_in "user[email]", :with => user.email
    click_button "Create Account"

    assert_equal users_path, current_path

    assert page.has_no_content?("Accounted Created")
  end
end
