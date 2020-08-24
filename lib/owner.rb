class Owner
  # code goes here
  attr_reader :species, :name

  @@all_owners = []

  def initialize(name)
    @name = name
    self.species = "Human"
    @owned_pets = []
    @@all_owners << self
  end

  def say_species
    puts "#{species}"
  end

  def self.all
    @@all_owners
  end

  def self.count
    self.all.length
  end

end
