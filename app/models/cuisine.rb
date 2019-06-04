class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :class_name => "Recipe",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
