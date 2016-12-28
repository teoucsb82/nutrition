class Nutrition
  class Ingredient
    attr_accessor :portion
    attr_accessor :measurement
    attr_accessor :description

    def initialize(options = {})
      @portion = options[:portion]
      @measurement = options[:measurement]
      @description = options[:description]
    end

    def to_s
      s = [portion, measurement, name].compact.join(' ')
      s += " (#{description})" if description
      s
    end

    def name
      self.class.to_s.split("::").last.gsub(/([^\^])([A-Z])/,'\1 \2')
    end
  end
end

require_relative './ingredient/almond'
require_relative './ingredient/agave_nectar'
require_relative './ingredient/apple'
require_relative './ingredient/baking_powder'
require_relative './ingredient/banana'
require_relative './ingredient/basil_leaf'
require_relative './ingredient/blueberry'
require_relative './ingredient/berry'
require_relative './ingredient/cheese'
require_relative './ingredient/cheese_cottage'
require_relative './ingredient/cheese_mozzarella'
require_relative './ingredient/chicken_breast'
require_relative './ingredient/cinnamon'
require_relative './ingredient/cornmeal'
require_relative './ingredient/cumin'
require_relative './ingredient/egg'
require_relative './ingredient/egg_white'
require_relative './ingredient/flaxseed'
require_relative './ingredient/flour_buckwheat'
require_relative './ingredient/flour_whole_wheat_pastry'
require_relative './ingredient/garlic'
require_relative './ingredient/garlic_powder'
require_relative './ingredient/honey'
require_relative './ingredient/ice'
require_relative './ingredient/jalepeno'
require_relative './ingredient/meat'
require_relative './ingredient/milk'
require_relative './ingredient/milk_low_fat'
require_relative './ingredient/nonstick_cooking_spray'
require_relative './ingredient/nut'
require_relative './ingredient/olive_oil'
require_relative './ingredient/onion'
require_relative './ingredient/parmesan'
require_relative './ingredient/peach'
require_relative './ingredient/peanut_butter'
require_relative './ingredient/pepper'
require_relative './ingredient/protein_powder_hemp'
require_relative './ingredient/protein_powder'
require_relative './ingredient/quinoa'
require_relative './ingredient/rice'
require_relative './ingredient/rolled_oats'
require_relative './ingredient/salt'
require_relative './ingredient/spinach'
require_relative './ingredient/syrup'
require_relative './ingredient/tomato_roma'
require_relative './ingredient/vanilla'
require_relative './ingredient/water'
require_relative './ingredient/yogurt'
