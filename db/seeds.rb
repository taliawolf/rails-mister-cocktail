puts 'cleaning database'
Ingredient.destroy_all

puts "getting API"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = HTTParty.get(url)
data = response.parsed_response
puts "API has been parsed"
list_of_ingredients = data['drinks']
list_of_ingredients.each do |ingredient|
  new_ingredient = Ingredient.new(name: ingredient["strIngredient1"])
  new_ingredient.save!
end
puts "you now have #{Ingredient.count} ingredients"
