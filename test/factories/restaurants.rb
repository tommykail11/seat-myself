# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    name "The Gold Club"
    teaser "Where Atlanta goes after dark."
    addresss "123 Peachtree Street"
    neighborhood "Buckhead"
    price "$$$$"
    summary "I went there once with Brian Sager. He was about to get laid by the stripper, but he puked all over his knee."
    menu "Shrimp, steak, salad, bread, appetizers, fish, dessert"
    timeslots 5
  end
end
