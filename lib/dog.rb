class Dog
  # code goes here
  attr_reader :name, :species
  attr_accessor :mood

    def initialize(name)
      @name = name
      @mood = 'nervous'
      @species = 'dog'
    end

end
