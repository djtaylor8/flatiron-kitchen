class Recipe < ApplicationRecord
  validates :name, presence: true
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  accepts_nested_attributes_for :ingredients, :reject_if => proc {|att| att[:name].blank?}
end
