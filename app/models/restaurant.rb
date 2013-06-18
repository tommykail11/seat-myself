class Restaurant < ActiveRecord::Base
  attr_accessible :address, :menu, :name, :neighborhood, :price, :summary, :teaser, :timeslots

  validates :address, presence: true, length: {maximum: 75}
  validates :menu, presence: true
  validates :name, presence: true, length: {maximum: 50}
  validates :neighborhood, presence: true, length: {maximum: 50}
  validates :price, presence: true, length: {maximum: 5}
  validates :summary, presence: true
  validates :teaser, presence: true, length: {maximum: 200}
  validates :timeslots, presence: true, numericality: {greater_than: 0, less_than: 12}
end
