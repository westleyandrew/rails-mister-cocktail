class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end



=begin
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end

Validation
A dose must have a description, a cocktail and an ingredient, and
[cocktail, ingredient] pairings should be unique.

Associations
A cocktail has many doses
A cocktail has many ingredients through doses
An ingredient has many doses
A dose belongs to an ingredient
A dose belongs to a cocktail
You can't delete an ingredient if it used by at least one cocktail.
When you delete a cocktail, you should delete associated doses
 (but not the ingredients as they can be linked to other cocktails).
 belongs_to :author, dependent: :destroy,
=end
