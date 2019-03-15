class Owner
  # code goes here

attr_accessor :pets, :name
attr_reader :species

@@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = 'human'
    @@all << self
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    return "I am a #{@species}."
  end

  def walk_dogs
    @pets[:dogs].each { |d| d.mood = 'happy' }
  end

  def play_with_cats
    @pets[:cats].each { |c| c.mood = 'happy' }
  end

  def feed_fish
    @pets[:fishes].each { |f| f.mood = 'happy' }
  end

  def sell_pets
    pets.each do |species, members|
      members.each { |a| a.mood = 'nervous'}
    end
    self.pets = {}
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end
