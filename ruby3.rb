class Animal
  def set_noise(noise)
  	@noise = noise
  def make_noise
    @noise
  end
end

animal = Animal.new
animal.set_noise("Moo!")
puts animal.make_noise

animal2 = Animal.new
animal2.set_noise("Oink!")
puts animal2.make_noise
