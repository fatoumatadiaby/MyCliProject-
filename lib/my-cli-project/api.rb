

class Api 
    
    BASE_URL = "https://api.spoonacular.com/recipes/search"
    
    def self.get_recipes
        response = RestClient.get(BASE_URL + "?query=cast+iron+dessert&apiKey=ab41c23b5cea41f59c5ac43552c91a92")
        data = JSON.parse(response)
        
       
        data["results"].each do |recipe_info| 
            title = recipe_info["title"] 
            ready_in_minutes = recipe_info["readyInMinutes"] 
            servings = recipe_info["servings"]
            source_url = recipe_info["sourceUrl"]
        Recipes.new(
                title: title,
                ready_in_minutes: ready_in_minutes,
                servings: servings,
                source_url: source_url
                )
        end

    end
    
    
end 