require 'open-uri'
require 'json'

puts "Debut du seed"
puts "Recuperation du json"
ingredientsdb = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
puts "parse du json"
ingredients = JSON.parse(ingredientsdb.read)
puts "Creation des ingredients"
ingredients["drinks"].each_with_index do |ingredient, index|
  Ingredient.new(name:ingredient["strIngredient1"]).save!
  puts "Ingredient #{index + 1} generé"
end
puts "Creation des ingredient terminer"
puts "fin du seed"
