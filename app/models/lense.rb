class Lense < ApplicationRecord
  
  #enums
  enum  prescription_type:  { fashion: 0, single_vision: 1, varifocals: 2}
  enum  lens_type:  { classic: 0, blue_light: 1, transition: 2 }

  has_many :lense_currencies
  has_many :currencies, through: :lense_currencies
end
