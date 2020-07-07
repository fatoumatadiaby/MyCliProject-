#responsible for welcoming the user and dealing with input 
# require_relative "../environment"



class Cli
    $name = "" #global variable to be able to aceess and intrpolate name anywhere in my cli
    def initialize
       puts "please enter your name"
       $name = gets.strip.downcase
       puts ". . . . . . . . . . . . . .WELCOME #{$name} TO . . . . . . . . . . . . . . . . . . . ."
       puts '░█▀▀█ █▀▀█ █▀▀ ▀▀█▀▀ 　 ▀█▀ █▀▀█ █▀▀█ █▀▀▄ 　 ░█▀▀▄ █▀▀ █▀▀ █▀▀ █▀▀ █▀▀█ ▀▀█▀▀ █▀▀ █ '
        puts '░█─── █▄▄█ ▀▀█ ──█── 　 ░█─ █▄▄▀ █──█ █──█ 　 ░█─░█ █▀▀ ▀▀█ ▀▀█ █▀▀ █▄▄▀ ──█── ▀▀█ ▀ '
         puts '░█▄▄█ ▀──▀ ▀▀▀ ──▀── 　 ▄█▄ ▀─▀▀ ▀▀▀▀ ▀──▀ 　 ░█▄▄▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀─▀▀ ──▀── ▀▀▀ ▄ '
      
       welcome_user
     
    end
 
   
    def welcome_user
       puts "Are you ready to start baking? yes/no"
       response = gets.strip.downcase
     if response == "yes"
        puts ""
        puts "AWESOME! I can't wait for you to try these recipes #{$name}! I absolutely love them!"
          Api.get_recipes
          print_recipe_list
      
     elsif response == "no"
        puts "its so sad to see you go #{$name}, come back again soon!"
     else
        puts "please answer yes or no"
        welcome_user
     end
    end 
    
    def print_recipe_list
       puts "please wait one moment while i go get my recipe book!"
       puts ""
       puts ""
       puts ""
       puts ""
     
       
       puts "Thanks for being so patient,here are your options!"
       Recipes.all.each.with_index(1) do |recipe, i| #al;ows me to choose what number i start my list with
       puts "#{i}. Title: #{recipe.title} | Bake Time:#{recipe.ready_in_minutes} | Servings:#{recipe.servings}"
      
      end
       recipe_link
    end
      
     def recipe_link
        response = nil #give response a default value to avoid breaking code
        while response != "exit" 
        puts "*****************************************************************" 
        puts "*****************************************************************"
        puts ""
        puts "To get more information about each recipe just type in the number corresponding to the recipe!"
        puts ""
        puts "If you dont like what you see just type exit"
        puts ""
        puts "if you would like to see the recipes again type list"

        response = gets.strip.downcase
        if response.to_i > 0 && response.to_i <= Recipes.all.count.to_i
           new_recipe = Recipes.all[response.to_i-1]   
           puts "#{new_recipe.source_url}" 
        elsif response == "list"
            print_recipe_list 
        elsif response == "exit"
           puts "so sad to see you go, come back again soon!" 
           exit 
        else 
         puts "please try again"
         recipe_link
         end
       end
    end
     
end    
    
    
    



   
    
  