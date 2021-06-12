class User < ApplicationRecord
  has_one_attached :image

  has_many :experiences
  has_many :educations
  has_many :projects

  validates :fio, presence: true, length: { in: 3..50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true

  validates :image, {
    presence: true
  }
  # validates :password, presence: true, length: { minimum: 6 }

  # alias_attribute :password_digest, :password
end
