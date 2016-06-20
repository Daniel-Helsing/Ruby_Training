class Animal
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms
  def setup_limbs
  		@legs = 4
  		@arms = 0
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

animal = Animal.new
animal.setup_limbs
animal.noise = "Moo!"
animal.name = "Steve"
puts animal.name
animal.color = "black"
puts animal.color
puts animal.legs
puts animal.noise


animal2 = Animal.new
animal2.noise = "Oink!"
puts animal2.noise
