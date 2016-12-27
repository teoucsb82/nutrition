class Nutrition
  class Recipe
    class WholeWheatCrepesFlorentine < Recipe
      def initialize
        @ingredients = [
          Nutrition::Ingredient::Water.new(portion: "3/4", measurement: "cup"),
          Nutrition::Ingredient::FlourWholeWheatPastry.new(portion: "1/2", measurement: "cup"),
          Nutrition::Ingredient::MilkLowFat.new(portion: "1/4", measurement: "cup"),
          Nutrition::Ingredient::EggWhite.new(portion: "1"),
          Nutrition::Ingredient::OliveOil.new(portion: "1", measurement: "tsp"),
          Nutrition::Ingredient::NonstickCookingSpray.new,
          Nutrition::Ingredient::Onion.new(portion: "1/4", measurement: "cup", description: "diced"),
          Nutrition::Ingredient::ChickenBreast.new(portion: "1/4", measurement: "cup", description: "chopped raw"),
          Nutrition::Ingredient::Spinach.new(portion: "1/4", measurement: "cup", description: "frozen, thawed and drained"),
          Nutrition::Ingredient::EggWhite.new(portion: "3", description: "beaten"),
          Nutrition::Ingredient::OliveOil.new(portion: "1", measurement: "tsp"),
          Nutrition::Ingredient::CheeseMozzarella.new(portion: "1", measurement: "tbsp", description: "shredded")
        ]
      end

      def meal_type
        [ Recipe::BREAKFAST ]
      end

      def plans
        [ Nutrition::Plan::FatShredder ]
      end

      def servings
        {
          Nutrition::Serving::PROTEIN => 1,
          Nutrition::Serving::GRAIN => 1,
          Nutrition::Serving::FAT => 1,
        }
      end

      def directions
        [
          "CREPES",
          "Whisk water, pastry flour, milk, 1 egg white, 1 tsp. olive oil, and a pinch of salt together until smooth. Cover and refrigerate 1 to 8 hours.",
          "Spray a small frying pan with cooking spray and heat over medium heat.",
          "Pour 1/4 cup of batter into pan and spread thin by tilting pan in a circular motion. Cook 2 to 3 minutes, until crepe begins to brown around the edges and top is covered in bubbles. Flip and cook an additional 1 to 2 minutes until crepe is no longer wet in the center but is still moist.",
          "Yields 6 to 8 crepes. Leftover crepes can be stored in a plastic bag in the refrigerator for up to 1 week, and reheated in a frying pan.",
          "FILLING",
          "Place 1 tsp. olive oil in a medium frying pan and preheat over medium heat, then add onion and chicken and sauté until chicken is cooked thoroughly.",
          "Add 3 beaten egg whites and spinach. Cook, scrambling, until eggs are no longer runny.",
          "Add cooked egg mixture and cheese to crepe; roll up crepe and serve hot."
        ]
      end

      def portion
        1
      end

      def calories
        241
      end
      
      def fat
        8
      end
      
      def saturated_fat
        2
      end
      
      def carbohydrate
        13
      end

      def protein
        27
      end

      def fiber
        3
      end

      def sodium
        329
      end
      
      def cholesterol
        34
      end
    end
  end
end