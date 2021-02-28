require "pry"
class Zoo
attr_reader :name, :location

@@zoo = []
def initialize(name, location)
    @name = name
    @location = location
    @@zoo << self
# binding.pry
end

def self.all
    @@zoo
end
 def animals
 Animal.all.select do |animal|
    animal.zoo == self
 end
end

def animal_species
    a = []
    animals.map do |animal|
        a << animal.species
    end
   a.uniq
end

def find_by_species(species)
   animals.select do |animal|
    animal.species == species  
    end
end

def animal_nicknames
    a = []
    animals.map do |animal|
        a << animal.nickname
    end
    a
end

def self.find_by_location(location)
    Zoo.all.select do |zoo|
        zoo.location == location
    end

end
end
