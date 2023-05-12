class CreateJoinTableRestaurantsDishes < ActiveRecord::Migration[7.0]
  def change
    create_join_table :restaurants, :dishes do |t|
      t.index [:restaurant_id, :dish_id]
      t.index [:dish_id, :restaurant_id]
    end
  end
end
