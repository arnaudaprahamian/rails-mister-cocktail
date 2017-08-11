class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  has_attachment :photo
  validates :name, :description, presence: true, uniqueness: true
end
