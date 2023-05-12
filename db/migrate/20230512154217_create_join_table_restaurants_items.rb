class CreateJoinTableRestaurantsItems < ActiveRecord::Migration[7.0]
  def change
    create_join_table :restaurants, :items do |t|
      t.index [:restaurant_id, :item_id]
      t.index [:item_id, :restaurant_id]
    end
  end
end
