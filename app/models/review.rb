class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, length: { in: 0..5 }
  validates :content, presence: true
end
