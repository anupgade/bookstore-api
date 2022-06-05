class Book < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :description, :price

  # validations
  validates :title, length: { in: 5..30 }
  validates :description, length: { in: 5..50 }
  validates :price, length: { in: 5..30 }
end
