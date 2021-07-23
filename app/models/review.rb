class Review < ApplicationRecord
  belongs_to :super_fan
  belongs_to :song

  validates :rating, numericality: { 
    greater_than_or_equal_to :1, 
    less_than_or_equal_to :10
  }
end
