class Review < ApplicationRecord
  belongs_to :list
  validates :rating, presence: { message: 'cannot be blank' }, numericality: { only_integer: true }
  validates :rating, numericality: { in: 1..5 }
  validates :comment, presence: true
end
