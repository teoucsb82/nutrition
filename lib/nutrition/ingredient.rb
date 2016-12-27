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

Dir["./lib/nutrition/ingredients/*.rb"].each {|file| require file }