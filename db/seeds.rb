require 'open-uri'
require 'json'

Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

drink_list = ingredients["drinks"]

drink_list.each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end
