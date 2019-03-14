class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
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
    "I am a #{species}."
  end

  def walk_dogs
    @pets[:dogs].each do|pet|
      pet.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do|pet|
      pet.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do|pet|
      pet.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pet|
        pet.each do |pet|
      pet.mood = "nervous"
      end
    end
    @pets.each do |species, pet|
      pet.clear
    end
  end

  def list_pets    
        "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
