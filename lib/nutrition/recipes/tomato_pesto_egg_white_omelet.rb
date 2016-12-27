class Nutrition
  class Recipe
    class TomatoPestoEggWhiteOmelet < Recipe

      def to_s
        'Tomato Pesto Egg-White Omelet'
      end

      def initialize
        @ingredients = [
          Nutrition::Ingredient::BasilLeaf.new(portion: "1/8", measurement: "cup", description: "finely chopped"),
          Nutrition::Ingredient::Garlic.new(portion: "1", measurement: "clove", description: "finely chopped"),
          Nutrition::Ingredient::TomatoRoma.new(portion: "1", description: "chopped"),
          Nutrition::Ingredient::OliveOil.new(portion: "1", measurement: "tsp"),
          Nutrition::Ingredient::EggWhite.new(portion: "3"),
          Nutrition::Ingredient::Parmesan.new(portion: "1", measurement: "tbsp", description: "shredded")
        ]
      end

      def meal_type
        [ Recipe::BREAKFAST ]
      end

      def plans
        [
          Nutrition::Plan::FatShredder,
          Nutrition::Plan::EnergyBooster,
          Nutrition::Plan::EnduranceMaximizer
        ]
      end

      def tags
        [
          Recipe::VEGAN,
          Recipe::VEGETARIAN,
          Recipe::GRAINFREE
        ]
      end

      def servings
        {
          Nutrition::Serving::PROTEIN => 0.5,
          Nutrition::Serving::VEGETABLE => 1,
          Nutrition::Serving::CONDIMENT => 1,
        }
      end

      def directions
        [
          "Whisk egg whites and set aside.",
          "Place olive oil in a small skillet and preheat over medium-low heat. Add garlic, basil, and tomato and sauté for 2 to 3 minutes.",
          "Add egg whites and cook for about 1 minute, then gently lift edge of omelet and allow liquid to flow underneath. Cook an additional minute or two and flip. Cook 1 more minute.",
          "Add cheese, fold in half, and slide onto plate."
        ]
      end

      def portion
        1
      end

      def calories
        138
      end
      
      def fat
        7
      end
      
      def saturated_fat
        2
      end
      
      def carbohydrate
        5
      end

      def protein
        13
      end

      def fiber
        1
      end

      def sodium
        241
      end
      
      def cholesterol
        4
      end
    end
  end
end