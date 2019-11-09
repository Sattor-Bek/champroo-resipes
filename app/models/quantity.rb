class Quantity < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  validates :recipe, presence: true, uniqueness: { scope: :ingredient }
  validates :description, presence: true
end
