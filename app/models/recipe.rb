class Recipe < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => :dishes_count

  # Indirect associations

  # Validations

end
