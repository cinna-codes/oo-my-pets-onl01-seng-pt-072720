class Owner
  # code goes here
  attr_reader :species, :name

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @owned_pets = []
    @@all_owners << self
  end

  def say_species
    puts "I am a #{species}."
  end

  def self.all
    @@all_owners
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all_owners.clear
  end

end
