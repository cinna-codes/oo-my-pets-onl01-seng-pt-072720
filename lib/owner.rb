require 'pry'
class Owner
  attr_reader :species, :name

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
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

  binding.pry

  def buy_cat(name)
    Cat.all.select { |c| c.name == name }.owner=(self)
  end

end
