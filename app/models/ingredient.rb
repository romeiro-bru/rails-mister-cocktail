class Ingredient < ApplicationRecord
  validates :name, presence: true
  has_many :doses
end
