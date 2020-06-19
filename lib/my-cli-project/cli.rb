#responsible for welcoming the user and dealing with input 
require_relative "../environment"


class Cli
    $name = ""
    def initialize
       puts "please enter your name"
       $name = gets.strip
       puts "Welcome #{$name} to Cast Iron Desserts!"
       welcome_user
    end
 
   
    def welcome_user
       puts "Are you ready to start baking? yes/no"
       response = gets.strip
     if response == "yes"
        puts "AWESOME! I can't wait for you to try these recipes #{$name}! I absolutely love them!"
        print_recipe_list
     elsif response == "no"
        puts "its so sad to see you go #{$name}, come back again soon!"
     else
        puts "Oops thats not a valid response please answer yes or no"
        welcome_user
     end
    end 
    
    def print_recipe_list
       
       puts "please wait one moment while i go get my recipe book!"
       puts ""
       puts ""
       puts ""
       puts ""
       Api.get_recipes
       puts "Thanks for being so patient,here are your options!"
       Recipes.all.each.with_index(1) do |recipe, i|
       puts "#{i}. #{recipe.title}"
            # {recipe.ready_in_minutes},
            # {recipe.servings},
            # {recipe.source_url}"
    end
    end    
        
    # def choose_recipe
    #     puts "if you want more details like the serving size, and the recip "
    # end
    # def good_bye
    #     puts "Come back again soon for more cast iron recipes"  
    # end

        # response = gets.strip
    #    if response == nil 
    #     puts "looks dont have nothing compared to how these bad boys taste!"
    #    else "well dont be shy choose a recipe #{$name}"
    #    end
    #    puts "to return back to the recipe menu press "
    #    puts "to exit app type exit"
    #    response = gets.chomp 
    #   if response == 1 
    #     puts 
    #   elsif response == 2
    #     puts 
    #   elsif response == 3
    #     puts 
    #   elsif response == 4 
    #     puts 
    #   elsif response == 5
    #     puts 
    #   elsif response == 
    
  
end 

