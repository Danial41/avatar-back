class User < ApplicationRecord
  has_secure_password

  has_many :experiences
  has_many :educations

  validates :fio, presence: true, length: { in: 3..50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
