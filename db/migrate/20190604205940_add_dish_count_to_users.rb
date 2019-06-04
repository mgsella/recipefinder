class AddDishCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :dishes_count, :integer
  end
end
