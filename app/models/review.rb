class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, format: { with: /[0-5]/, message: "only between 0 and 5" }
  validates :rating, numericality: { only_integer: true }
end
