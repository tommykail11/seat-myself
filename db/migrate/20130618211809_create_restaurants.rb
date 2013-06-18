class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :teaser
      t.string :address
      t.string :neighborhood
      t.string :price
      t.text :summary
      t.text :menu
      t.integer :timeslots

      t.timestamps
    end
  end
end
