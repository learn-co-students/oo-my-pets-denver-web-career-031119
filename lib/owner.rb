class Owner
  attr_accessor :pets

  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_cat(name)
    new_cat = Cat.new(name, mood)
    @pets[1] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name, mood)
    @pets[2] << new_dog
  end

  def buy_fish(name)
    new_fish = Fish.new(name, mood)
    @pets[0] << new_fish
  end

end
