class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :food,
             :class_name => "Category",
             :foreign_key => "category_id"

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
