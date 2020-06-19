#to get the website to pull api and url needed to run the app
#to be able to call on each recipe and pull the details of said recipe
#to be able to provide uniq url links that belong to each recipe 
class Api 
    #pull data from api and get it to run in our app
    BASE_URL = "https://api.spoonacular.com/recipes/search"
    
    def self.get_recipes
        response = RestClient.get(BASE_URL + "?query=cast+iron+dessert&apiKey=ab41c23b5cea41f59c5ac43552c91a92")
        data = JSON.parse(response)
        
        #iterate over data to get the recipe information needed to show user what each recipe entales
        data["results"].each do |recipe_info| #information we want to grab from the nested hash
            title = recipe_info["title"] 
            ready_in_minutes = recipe_info["ready_in_minutes"] 
            servings = recipe_info["servings"]
            source_url = recipe_info["source_url"]
            Recipe_info.new(
                title: title,
                ready_in_minutes: ready_in_minutes,
                servings: servings,
                source_url: source_url
                )
                
            end
            
            #    self.get_recipe_website
            #     Recipes.all.each do |recipes|
            
        end
    end
    
    
    # ab41c23b5cea41f59c5ac43552c91a92
