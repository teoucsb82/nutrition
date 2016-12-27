require 'minitest/autorun'
require 'nutrition'

class RecipeTest < Minitest::Test
  describe 'recipes' do
    it 'has the following recipes' do
      assert_instance_of Recipe::TomatoPestoEggWhiteOmelet, Recipe::TomatoPestoEggWhiteOmelet.new
      assert_instance_of Recipe::WholeWheatCrepesFlorentine, Recipe::WholeWheatCrepesFlorentine.new
    end
  end

  describe 'instance methods' do    
    before do
      @recipe = Recipe::TomatoPestoEggWhiteOmelet.new
    end

    describe '#to_s' do
      it { assert_equal @recipe.to_s, 'Tomato Pesto Egg-White Omelet' }
    end

    describe '#plans' do
      it { refute_nil @recipe.plans }
    end

    describe '#tags' do
      it { refute_nil @recipe.tags }
    end

    describe '#servings' do
      it { refute_nil @recipe.servings }
    end

    describe '#directions' do
      it { refute_nil @recipe.directions }
    end

    describe '#portion' do
      it { refute_nil @recipe.portion }
    end

    describe '#calories' do
      it { refute_nil @recipe.calories }
    end

    describe '#fat' do
      it { refute_nil @recipe.fat }
    end

    describe '#saturated_fat' do
      it { refute_nil @recipe.saturated_fat }
    end

    describe '#carbohydrate' do
      it { refute_nil @recipe.carbohydrate }
    end

    describe '#protein' do
      it { refute_nil @recipe.protein }
    end

    describe '#fiber' do
      it { refute_nil @recipe.fiber }
    end

    describe '#sodium' do
      it { refute_nil @recipe.sodium }
    end

    describe '#cholesterol' do
      it { refute_nil @recipe.cholesterol }
    end
  end
end