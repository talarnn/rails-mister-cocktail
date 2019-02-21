require 'open-uri'
require 'json'

Ingredient.destroy_all

url = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
ingredients = JSON.parse(url)
ingredients["drinks"].each do |ingredient|
  add = Ingredient.new(name: ingredient["strIngredient1"])
  add.save!
end
