class Recipes
    attr_accessor :title, :ready_in_minutes, :servings, :source_url 

    @@all = [] #all of the recipes we call need a place to be stored 
    
    def initialize(title:, ready_in_minutes:, servings:, source_url:) #key,value method so arguments dont have to be place in specific orders 
     self.title = title #set it to self. to be able to make custom changes if i wanted to in the futre ex:upcase, downcase
     self.ready_in_minutes = ready_in_minutes
     self.servings = servings
     self.source_url = source_url
     
     self.save
   
    end
    
    def save
      @@all << self
    end

    def self.all
        @@all
    end     
end









# class Recipe
# recipe attributes 

# title: 
# readyInMinutes: 
# servings: 
# sourceUrl: 
 
# def title

# end 

# def readyInMinutes

# end

# def servings
# end 

# def source_url

# end 

# end