class Vinyl < ApplicationRecord
  belongs_to :user
  has_many :category_vinyls
  has_many :offers
  has_many :categories, through: :category_vinyls 

  enum status: [:available, :unavailable]

  validates :name, :author, :description, :status, presence: true
  validates :description, length: {maximum: 500, too_long: "%#{count} exceeds the character limit."}
end
