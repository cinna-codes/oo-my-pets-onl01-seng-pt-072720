#require 'pry'
class Owner
  attr_accessor :all_pets
  attr_reader :owners_cats, :owners_dogs, :species, :name

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    #@all_pets = []
    @owners_cats = []
    @owners_dogs = []
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

#  binding.pry

  def buy_cat(name)
    # Cat.all.find { |c| c.name == name }.owner = self
    # self.all_pets << Cat.all.find { |c| c.name == name }

    # When an owner buys a new pet, the buy_cat/buy_dog methods take in an argument of a name. You must take that name and do the following:
    # Make a new instance of the appropriate pet, initializing it with that name and the owner who is purchasing it.



  end

end
