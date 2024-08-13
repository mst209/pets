# typed: strict
require 'sorbet-runtime'
require_relative 'lib/animal'
require_relative 'lib/animals/cat'
require_relative 'lib/animals/dog'
require_relative 'lib/food'
require_relative 'lib/foods/cat_food'
require_relative 'lib/foods/chicken'
require_relative 'lib/foods/dog_food'
require_relative 'lib/foods/human_food'
require_relative 'lib/foods/lemon'
require_relative 'lib/foods/milk'

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