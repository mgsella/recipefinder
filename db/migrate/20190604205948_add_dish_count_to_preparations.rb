class AddDishCountToPreparations < ActiveRecord::Migration[5.1]
  def change
    add_column :preparations, :dishes_count, :integer
  end
end
