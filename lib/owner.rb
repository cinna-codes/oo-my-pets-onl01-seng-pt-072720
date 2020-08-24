class Owner
  # code goes here
  attr_reader :species, :name

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "Human"
    @owned_pets = []
    @@all << self
  end

  def say_species
    puts "#{species}"
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all.clear
  end

end
