1. user enters app by putting name 
2 app  welcomes user with custom greeting  "welcome to Cast Iron Desserts!!! Ready to start Eating?" (creat a method that will welcome user and give the user and option to enter or exit depending on yes or no answer)
3. if user say yes, user will automatically be taking to a menu full of recipe options 
4. user will then be prompted to choose a number from the list 
5. user chooses number receives a recipe! 
6. user hs the option to go baxk to home page or exit app 


methods to be defined 

welcome_user method 
view_recipe_list method 
select_recipe method 
return to home page method 
exit method 

classes
recipe class
ClI 

Class Recipe 

recipes = []

attr reader :user_name 

def initialize(user_name, new_recipe)
@user_name = user_name 
@new_recipe >> recipes
end 


def new_recipe
#when new  recipe is found it will automatically be added to the list of recipes 
end 

def welcome_user(user_name)
 #if user enters name 
 puts "Welcome #{user_name}! to Cast Iron desserts! I hope you are just as excited as i am to taste these awesome desserts!"
else 
 not exits site 
end 


def view_recipe_list 
#user gets and option to press one to view recipes or press two to exit 
puts "#{user_name} choose from the options below"
if user press one 
puts list of recipes 
if user press two 
exits site 
end 

def select_recipe 
puts "that a great choice #{user_name}!"
#user can choose to select recipe by number ranging from 1 to how much recipes i decide to use 
recipe num = 1-10
when user selects 1
puts recipe 
when user selects 2 puts recipe 
else returns to main menu
else exits app 
end 

def home_page

end 

def return_to_home_page


end 
