class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :link
      t.integer :cuisine_id
      t.integer :preparation_id
      t.time :cook_time
      t.integer :food_id
      t.integer :user_id

      t.timestamps
    end
  end
end
