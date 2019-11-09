class Ingredient < ApplicationRecord
  has_many :quantities
  has_many :recipes, through: :quantities
  validates :name, presence: true
end
