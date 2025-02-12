class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: { message: "Content cannot be blank" }
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
