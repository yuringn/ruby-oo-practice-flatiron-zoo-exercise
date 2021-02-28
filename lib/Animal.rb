class Animal
    attr_accessor :weight
    attr_reader :species, :nickname, :zoo
    @@animal = []
    
def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@animal << self
end

def self.all
    @@animal
end

 def zoos
    self.zoo     
end

def self.find_by_species(species)
Animal.all.select do |animal|
    animal.species == species
end
end

end
