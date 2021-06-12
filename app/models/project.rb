class Project < ApplicationRecord
  # enum options: %i[космос авиация сельское_хозяйство биотех]
  belongs_to :user

  has_one_attached :image
  validates :image, {
    presence: true
  }
end
