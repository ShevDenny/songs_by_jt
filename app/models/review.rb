class Review < ApplicationRecord
  belongs_to :super_fan
  belongs_to :song

  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  # fan can only review a song once
  validates :super_fan_id, uniqueness: {scope: :song_id, message: "already left a review for this song"}
end
