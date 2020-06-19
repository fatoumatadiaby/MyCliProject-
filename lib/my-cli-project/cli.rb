#responsible for welcoming the user and dealing with input 
require_relative "../environment"


class Cli
    attr_accessor :user_name 
 
 def initialize
   puts "please enter your name"
   @user_name = user_name
end

  
  def welcome_user(user_name)
     puts "Welcome #{user_name} to Cast Iron Desserts! Are you ready to start baking?!"
 end 

end
#    def welcome_user(user_name)
#     #if user enters name 
#     puts "Welcome #{user_name}! to Cast Iron desserts! I hope you are just as excited as i am to taste these awesome desserts!"
#    else 
#      exits site 
#    end 
   
   
#    def view_recipe_list 
#    #user gets and option to press one to view recipes or press two to exit 
#    puts "#{user_name} choose from the options below"
#    if user press one 
#    puts list of recipes 
#    if user press two 
#    exits site 
#    end 
   
#    def select_recipe 
#    puts "that a great choice #{user_name}!"
#    #user can choose to select recipe by number ranging from 1 to how much recipes i decide to use 
#    recipe num = 1-10
#    when user selects 1
#    puts recipe 
#    when user selects 2 puts recipe 
#    else returns to main menu
#    else exits app 
#    end 
   
#    def home_page
   
#    end 
   
#    def return_to_home_page
   
   
#    end 
   
# end

# welcome_user method 
# view_recipe_list method 
# select_recipe method 
# return to home page method 
# exit method 
