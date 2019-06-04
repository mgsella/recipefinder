class Category < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :class_name => "Recipe",
             :foreign_key => "food_id",
             :dependent => :destroy

  has_many   :favorites,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
