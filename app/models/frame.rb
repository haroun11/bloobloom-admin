class Frame < ApplicationRecord

  #enums
  enum  status:  {inactive: 0, active: 1 }
  
  has_many :frame_currencies
  has_many :currencies, through: :frame_currencies

end
