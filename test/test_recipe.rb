require 'minitest/autorun'
require 'nutrition'

class RecipeTest < Minitest::Test
  describe '.find' do
    it 'returns a fresh instance of the parameterized search results' do
      recipe = PeachesNCreamParfait.new
      assert_instance_of PeachesNCreamParfait, Nutrition::Recipe.find(recipe.slug)
    end
  end

  describe 'recipes' do
    it 'has the following recipes' do
      assert_instance_of BreakfastMuffinCupsToGo, BreakfastMuffinCupsToGo.new
      assert_instance_of BreakfastQuinoa, BreakfastQuinoa.new
      assert_instance_of HomemadeMuesli, HomemadeMuesli.new
      assert_instance_of PeachesNCreamParfait, PeachesNCreamParfait.new
      assert_instance_of PeanutButterProteinShake, PeanutButterProteinShake.new
      assert_instance_of PeppermintPattyShake, PeppermintPattyShake.new
      assert_instance_of PowerCornPancakesWithBlueberries, PowerCornPancakesWithBlueberries.new
      assert_instance_of TomatoPestoEggWhiteOmelet, TomatoPestoEggWhiteOmelet.new
      assert_instance_of WholeWheatCrepesFlorentine, WholeWheatCrepesFlorentine.new
    end
  end

  describe 'instance methods' do    
    before do
      @recipe = TomatoPestoEggWhiteOmelet.new
    end

    describe '#to_s' do
      it { assert_equal @recipe.to_s, 'Tomato Pesto Egg-White Omelet' }
    end

    describe '#meal_types' do
      it { refute_nil @recipe.meal_types }
    end

    describe '#serving_size' do
      it { refute_nil @recipe.serving_size }
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