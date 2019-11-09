class Recipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantitiess
end
