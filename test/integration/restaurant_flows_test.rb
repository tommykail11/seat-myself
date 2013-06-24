require 'test_helper'

class RestaurantFlowsTest < ActionDispatch::IntegrationTest
  
  test "browsing restaurants" do
    restaurant1 = FactoryGirl.create(:restaurant, :name => "Barbounia")
    restaurant2 = FactoryGirl.create(:restaurant, :name => "Turks & Frogs")
    restaurant3 = FactoryGirl.create(:restaurant, :name => "the Odeon")
    restaurant4 = FactoryGirl.create(:restaurant, :name => "the Balthazaar")

    visit "/restaurants"

    assert_equal projects_path, current_path

    assert page.has_content?("Restaurants")

    assert page.has_content?("Barbounia")
    assert page.has_content?("Turks & Frogs")
    assert page.has_content?("the Odeon")
    assert page.has_content?("the Balthazaar")

    click_link 'Barbounia'

    assert_equal restaurant_path(restaurant1), current_path
    assert find('h1:first').has_content? restaurant1.title
  end

  test "navigation" do
    visit "/"
    assert_equal root_path, current_path
    assert_equal "Home", find('.navbar ul li.active a').text

    find('.navbar ul').click_link('Restaurants')
    assert_equal projects_path, current_path
    assert_equal "Restaurants", find('.navbar ul li.active a').text
  end  
end
