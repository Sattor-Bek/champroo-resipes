class Recipe < ApplicationRecord
  validates :name, presence: true
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantitiess
end
