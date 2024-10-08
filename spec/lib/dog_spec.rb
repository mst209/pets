# frozen_string_literal: true
# typed: false

require 'rspec'
require_relative '../../main'

RSpec.describe Dog do
  let(:dog) { Dog.new }
  let(:cat_food) { CatFood.new }
  let(:chicken) { Chicken.new }
  let(:dog_food) { DogFood.new }
  let(:human_food) { HumanFood.new }
  let(:lemon) { Lemon.new }
  let(:milk) { Milk.new }
  let(:expect_bark_once) do
    expect(dog).to receive(:bark).once
  end
  let(:expect_bark_three_times) do
    expect(dog).to receive(:bark).exactly(3).times
  end

  it 'When a dog eats dog_food it should bark 3 times' do
    expect_bark_three_times
    dog.eats(dog_food)
  end

  it 'When a dog eats cat_food it should bark 3 times' do
    expect_bark_three_times
    dog.eats(cat_food)
  end

  it 'When a dog eats chicken it should bark 3 times' do
    expect_bark_three_times
    dog.eats(chicken)
  end

  it 'When a dog eats dog_food it should bark 3 times' do
    expect_bark_three_times
    dog.eats(dog_food)
  end

  it 'When a dog eats human_food it should bark 3 times' do
    expect_bark_three_times
    dog.eats(human_food)
  end

  it 'When a dog eats milk it should bark once' do
    expect_bark_once
    dog.eats(milk)
  end

  it 'When a dog eats a lemon it should bark once' do
    expect_bark_once
    dog.eats(lemon)
  end
end
