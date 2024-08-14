# frozen_string_literal: true
# typed: strict

# Subclass of Animal
class Dog < Animal
  sig { void }
  def bark
    puts 'bark'
  end

  sig { override.void }
  def make_noise
    bark
  end

  sig { override.params(food: Food).returns(T::Boolean) }
  def likes?(food)
    if food.is_a?(DogFood) || food.is_a?(CatFood) || food.is_a?(Chicken) || food.is_a?(HumanFood)
      true
    else
      false
    end
  end
end
