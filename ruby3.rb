class Animal
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms
  def initialize(noise, legs = 4, arms = 0)
  		@noise = noise
  		@legs = legs
  		@arms = arms
  		puts "A new animal has been created"
  end	
  def noise=(noise)
  	@noise = noise
  end
  def noise
    @noise
  end
  def color
  	"The color is #{@color}"
  end
end

animal = Animal.new("Moo!", 4, 0)
animal.name = "Steve"
puts animal.name
animal.color = "black"
puts animal.color
puts animal.legs
puts animal.noise


animal2 = Animal.new("Oink!")
puts animal2.noise
