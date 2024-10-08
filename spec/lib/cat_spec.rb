# frozen_string_literal: true
# typed: false

require 'rspec'
require_relative '../../main'

RSpec.describe Cat do
  let(:cat) { Cat.new }
  let(:cat_food) { CatFood.new }
  let(:chicken) { Chicken.new }
  let(:dog_food) { DogFood.new }
  let(:human_food) { HumanFood.new }
  let(:lemon) { Lemon.new }
  let(:milk) { Milk.new }
  let(:expect_meow_once) do
    expect(cat).to receive(:meow).once
  end
  let(:expect_meow_three_times) do
    expect(cat).to receive(:meow).exactly(3).times
  end
  it 'When a cat eats cat_food it should meow 3 times' do
    expect_meow_three_times
    cat.eats(cat_food)
  end

  it 'When a cat eats chicken it should meow 3 times' do
    expect_meow_three_times
    cat.eats(chicken)
  end

  it 'When a cat eats milk it should meow 3 times' do
    expect_meow_three_times
    cat.eats(milk)
  end

  it 'When a cat eats a lemon it should meow once' do
    expect_meow_once
    cat.eats(lemon)
  end

  it 'When a cat eats human food it should meow once' do
    expect_meow_once
    cat.eats(human_food)
  end

  it 'When a cat eats dog food it should meow once' do
    expect_meow_once
    cat.eats(dog_food)
  end
end
