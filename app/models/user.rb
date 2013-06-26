class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true, uniqueness: true
  validates :password, :presence => true, :on => :create
end
