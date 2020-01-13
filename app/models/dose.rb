class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :description, length: { maximum: 340 }
  validates :description, length: { minimum: 120 }
  validates :cocktail, uniqueness: { scope: :ingredient_id }
end
