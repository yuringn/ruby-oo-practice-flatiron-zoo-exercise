require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#zoo
newyork = Zoo.new("Central", "New York")
brooklyn = Zoo.new("Brooklyn", "New York")
queen = Zoo.new("The Zoo", "Queen")

#animals
a = Animal.new("dog", 3, "Fred", newyork)
b = Animal.new("lion", 100, "Simba", newyork)
c = Animal.new("fish", 1,"Gold",brooklyn)
d = Animal.new("bird", 2, "Rio", brooklyn)
e = Animal.new("dog", 5, "Retriever", newyork)

binding.pry
puts "done"


