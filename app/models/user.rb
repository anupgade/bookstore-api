class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # validations
  validates_presence_of :name, :email, :password
  validates :name, length: { minimum: 3 }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 5 }
end
