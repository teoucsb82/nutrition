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
      Dir["./lib/nutrition/recipe/*.rb"].map { |f| f.split("/")
                                                    .last
                                                    .gsub(".rb", "")
                                                    .gsub("_", "-") }
    end

    ##
    # Nutrition::Recipe.find("breakfast-muffin-cups-to-go")
    # => 
    def self.find(slug)
      klass = slug.split("-").map(&:capitalize).join("")
      Nutrition::Recipe.const_get(klass).new
    end
    
    ##
    # Nutrition::Recipe.BreakfastMuffinCupsToGo.slug
    # => "breakfast-muffin-cups-to-go"
    def self.slug
      self.to_s.split("::").last.gsub(/([^\^])([A-Z])/,'\1-\2').split("-").map(&:downcase).join("-")
    end

    def tags
      []
    end

    def to_s
      self.class.to_s.split("::").last.gsub(/([^\^])([A-Z])/,'\1 \2')
    end

  end
end

Dir["./lib/nutrition/recipe/*.rb"].each { |file| require file }