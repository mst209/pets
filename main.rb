# typed: strict
require_relative 'requirements'

dog = Dog.new
cat = Cat.new
dog_food = DogFood.new
milk = Milk.new

puts 'A dog eats dog food'
dog.eats(dog_food)

puts 'A dog eats milk'
dog.eats(milk)

puts 'A cat eats dog food'
cat.eats(dog_food)

puts 'A cat eats milk'
cat.eats(milk)