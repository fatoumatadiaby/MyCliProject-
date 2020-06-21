#responsible for welcoming the user and dealing with input 
require_relative "../environment"



class Cli
    $name = ""
    def initialize
       puts "please enter your name"
       $name = gets.strip
       puts ". . . . . . . . . . . . . .WELCOME #{$name} TO . . . . . . . . . . . . . . . . . . . ."
       puts '░█▀▀█ █▀▀█ █▀▀ ▀▀█▀▀ 　 ▀█▀ █▀▀█ █▀▀█ █▀▀▄ 　 ░█▀▀▄ █▀▀ █▀▀ █▀▀ █▀▀ █▀▀█ ▀▀█▀▀ █▀▀ █ '
        puts '░█─── █▄▄█ ▀▀█ ──█── 　 ░█─ █▄▄▀ █──█ █──█ 　 ░█─░█ █▀▀ ▀▀█ ▀▀█ █▀▀ █▄▄▀ ──█── ▀▀█ ▀ '
         puts '░█▄▄█ ▀──▀ ▀▀▀ ──▀── 　 ▄█▄ ▀─▀▀ ▀▀▀▀ ▀──▀ 　 ░█▄▄▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀─▀▀ ──▀── ▀▀▀ ▄ '
          
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
       puts "#{i}. Title: #{recipe.title} | Bake Time:#{recipe.ready_in_minutes} | Servings:#{recipe.servings} "
       
      end
        recipe_link
    end
    
     def recipe_link
        response = nil
        while response != "exit"
        puts "*****************************************************************" 
        puts "*****************************************************************"
        puts "*****************************************************************"
        puts "To get more information about each recipe just type in the number corresponding to the recipe!"
        puts "If you dont like what you see just type exit"
        puts "if you would like to see the recipes again type list"

        response = gets.strip
      #   Api.get_recipes
        if response.to_i > 0 
           new_recipe = Recipes.all[response.to_i-1]
           puts "#{new_recipe.source_url}"
        elsif response == "list"
            print_recipe_list
       else
         puts "have a great day!"
        end
       end
    end
end    
    
    
    



   
    
  