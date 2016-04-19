class CatFact < ActiveRecord::Base

  attr_accessor :fact, :category

  @@all = []

  def initialize(attributes)
    @fact = attributes[:fact]
    @category = attributes[:category]
    @@all << self
  end 
  
end 