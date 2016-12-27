class Nutrition
  class Recipe
    attr_reader :ingredients

    VEGAN = 'Vegan'
    VEGETARIAN = 'Vegetarian'
    GRAINFREE = 'Grain-Free'

    BREAKFAST = 'Breakfast'
    LUNCH = 'Lunch'
    DINNER = 'Dinner' 
    SALAD = 'Salad'
    SOUP = 'Soup'

    def self.all
      Dir["./lib/nutrition/recipes/*.rb"].map { |file| file }
    end
    
    def tags
      []
    end

    def to_s
      self.class.to_s.split("::").last.gsub(/([^\^])([A-Z])/,'\1 \2')
    end
  end
end

Dir["./lib/nutrition/recipes/*.rb"].each {|file| require file }