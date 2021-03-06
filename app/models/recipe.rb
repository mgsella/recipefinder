class Recipe < ApplicationRecord
  # Direct associations

  belongs_to :food,
             :class_name => "Category",
             :counter_cache => :dishes_count

  belongs_to :preparation,
             :counter_cache => :dishes_count

  belongs_to :cuisine,
             :counter_cache => :dishes_count

  belongs_to :user,
             :counter_cache => :dishes_count

  # Indirect associations

  # Validations

end
