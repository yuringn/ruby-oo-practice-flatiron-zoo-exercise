class Zoo
@@all = []
attr_accessor :location
attr_reader :name
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
            # binding.pry
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
        animals.map do |animal|
             animal.nickname
        end
    end

    def self.find_by_location(location)
        Zoo.all.select do |zoo|
            zoo.location == location
        end
    end

end