class Owner
  # code goes here
  attr_reader :species, :name

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    #@owned_pets = []
    @@all_owners << self
  end

  def say_species
    return "I am a #{@species}."
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

  def cats
    Cat.all.select { |o| o.owner == self }
  end

  def dogs
    Dog.all.select { |o| o.owner == self }
  end

  def buy_cat(name)
    Cat.all.select { |c| c.name == name }
  end

end
