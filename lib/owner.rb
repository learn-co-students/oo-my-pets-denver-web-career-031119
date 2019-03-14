require 'pry'
class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name
  attr_accessor :pets
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes:[],dogs:[],cats:[]}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

   def walk_dogs
     pets[:dogs] = pets[:dogs].map{ |dog| dog.mood=('happy')}
   end

   def play_with_cats
     pets[:cats] = pets[:cats].map{ |cat| cat.mood=('happy')}
   end

   def feed_fish
     pets[:fishes] = pets[:fishes].map{ |fish| fish.mood=('happy')}
   end

   def sell_pets
     # binding.pry
     pets.map do |species, pet|
       pet.each{|p| p.mood='nervous'}
       pets[species] = []
       # binding.pry
     end
   end

   def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
   end

end
