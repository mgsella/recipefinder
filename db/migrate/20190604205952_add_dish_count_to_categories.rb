class AddDishCountToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :dishes_count, :integer
  end
end
