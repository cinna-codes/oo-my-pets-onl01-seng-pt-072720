class Owner
  # code goes here
  attr_reader :species, :name

  @@all_owners = []

  def initialize
    @species = "Human"
    @owned_pets = []
  end

  def say_species
    puts @species
  end

end
