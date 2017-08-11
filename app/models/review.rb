class Review < ApplicationRecord
  belongs_to :cocktail
  validates :title, :author, presence: true, uniqueness: true
  validates :content, presence: true
end
