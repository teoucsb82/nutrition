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
    'Teo'
  end
end

require_relative 'ingredients/basil_leaf'
require_relative 'ingredients/cheese_mozzarella'
require_relative 'ingredients/chicken_breast'
require_relative 'ingredients/egg_white'
require_relative 'ingredients/flour_whole_wheat_pastry'
require_relative 'ingredients/garlic'
require_relative 'ingredients/milk_low_fat'
require_relative 'ingredients/nonstick_cooking_spray'
require_relative 'ingredients/olive_oil'
require_relative 'ingredients/onion'
require_relative 'ingredients/parmesan'
require_relative 'ingredients/spinach'
require_relative 'ingredients/tomato_roma'
require_relative 'ingredients/water'
