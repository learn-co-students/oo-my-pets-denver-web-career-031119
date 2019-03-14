class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    self.pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|pet|
    pet.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|pet|
    pet.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|pet|
    pet.mood = "happy"}
  end

  def sell_pets
    @pets.each {|species, pet|
      pet.each {|pet|
    pet.mood = "nervous"}}
    @pets.each {|species, pet|
      pet.clear}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
