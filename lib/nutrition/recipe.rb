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
      [
        BreakfastMuffinCupsToGo.new,
        BreakfastQuinoa.new,
        HomemadeMuesli.new,
        PeachesNCreamParfait.new,
        PowerCornPancakesWithBlueberries.new,
        TomatoPestoEggWhiteOmelet.new,
        WholeWheatCrepesFlorentine.new
      ]
    end

    ##
    # Nutrition::Recipe.find("breakfast-muffin-cups-to-go")
    # => 
    def self.find(slug)
      klass = slug.split("-").map(&:capitalize).join("")
      Nutrition::Recipe.const_get(klass).new
    end
    
    ##
    # Nutrition::Recipe.BreakfastMuffinCupsToGo.new.slug
    # => "breakfast-muffin-cups-to-go"
    def slug
      self.class.to_s.split("::").last.gsub(/([^\^])([A-Z])/,'\1-\2').split("-").map(&:downcase).join("-")
    end
    
    def tags
      []
    end

    def to_s
      self.class.to_s.split("::").last.gsub(/([^\^])([A-Z])/,'\1 \2')
    end
    
    private
    ##
    # Nutrition::Recipe.slugs
    # => ["breakfast-muffin-cups-to-go", ...]
    def self.slugs
      Dir["lib/nutrition/recipe/*.rb"].map { |f| f.split("/")
                                                  .last
                                                  .gsub(".rb", "")
                                                  .gsub("_", "-") }
    end
  end
end

require_relative './recipe/breakfast_muffin_cups_to_go'
require_relative './recipe/breakfast_quinoa'
require_relative './recipe/homemade_muesli'
require_relative './recipe/peaches_n_cream_parfait'
require_relative './recipe/power_corn_pancakes_with_blueberries'
require_relative './recipe/tomato_pesto_egg_white_omelet'
require_relative './recipe/whole_wheat_crepes_florentine'
