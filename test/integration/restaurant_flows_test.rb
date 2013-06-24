require 'test_helper'

class RestaurantFlowsTest < ActionDispatch::IntegrationTest
  
  test "browsing restaurants" do
    restaurant1 = FactoryGirl.create(:restaurant, :name => "Barbounia")
    restaurant2 = FactoryGirl.create(:restaurant, :name => "Turks & Frogs")
    restaurant3 = FactoryGirl.create(:restaurant, :name => "the Odeon")

    visit "/restaurants"

    assert_equal projects_path, current_path

    assert page.has_content?("Restaurants")

    assert page.has_content?("Barbounia")
    assert page.has_content?("Turks & Frogs")
    assert page.has_content?("the Odeon")

  end
end
