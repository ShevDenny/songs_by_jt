class Song < ApplicationRecord
    has_many :reviews
    has_many :super_fans, through: :reviews
    # has_many :super_fans - aliasing Active Record Relationships [BONUS]
end
