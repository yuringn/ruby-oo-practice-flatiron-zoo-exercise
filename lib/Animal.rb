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

# def zoo
#     self.zoo
#     binding.pry
# end

#  def self.find_by_species
#     Animal.all.select {|animal| animal.zoo == self}
# end

end

# dog=Animal.new("dog", 3, "fred")