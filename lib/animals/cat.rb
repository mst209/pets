# frozen_string_literal: true
# typed: strict

# Subclass of Animal
class Cat < Animal
  sig { void }
  def meow
    puts 'meow'
  end

  sig { override.void }
  def make_noise
    meow
  end

  sig { override.params(food: Food).returns(T::Boolean) }
  def likes?(food)
    if food.is_a?(CatFood) || food.is_a?(Chicken) || food.is_a?(Milk)
      true
    else
      false
    end
  end
end
