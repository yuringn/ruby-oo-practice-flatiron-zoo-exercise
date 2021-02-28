require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#zoo
dc = Zoo.new("Central", "DC")
logan = Zoo.new("Logan", "DC")
newyork = Zoo.new("Brooklyn", "New York")
queen = Zoo.new("The Zoo", "Queen")

#animals
a = Animal.new("dog", 3, "Fred", dc)
b = Animal.new("lion", 100, "Simba", dc)
c = Animal.new("dog", 5, "Retriever", dc)
d = Animal.new("fish", 1,"Gold",newyork)
e = Animal.new("bird", 2, "Rio", newyork)


binding.pry
puts "done"


