class Api
 BASE_URL = "https://api.spoonacular.com/recipes/search"

 def self.get_recipes
   answer = RestClient.get(BASE_URL + "recipes/search?query=cast+iron+dessert&apiKey=ab41c23b5cea41f59c5ac43552c91a92")
   binding.pry
 end
end
# ab41c23b5cea41f59c5ac43552c91a92

