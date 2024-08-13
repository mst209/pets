# typed: strict
class Animal
  extend T::Sig
  extend T::Helpers                                    # (1)
  abstract!

  sig { abstract.params(food: Food).returns(T::Boolean) }
  def likes?(food); end

  sig(:final) { params(food: Food).void }
  def eats(food)
    if likes?(food)
      3.times do 
        make_noise
      end
    else
      make_noise
    end
  end

  sig { abstract.void }
  def make_noise; end

end