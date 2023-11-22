# frozen_string_literal: true

require 'delegate'

# Coffee
class Coffee
  def cost
    2
  end

  def origin
    'Colombia'
  end
end

# Milk
class Milk < SimpleDelegator
  def initialize(coffee)
    @coffee = coffee
    super
  end

  def class
    __getobj__.class
  end

  def cost
    @coffee.cost + 0.4
  end
end

coffee = Coffee.new
puts "Americano (#{coffee.origin}): $#{coffee.cost}"
latte = Milk.new(coffee)
puts "Latte (#{latte.origin}): $#{latte.cost}"
puts "Class: #{latte.class}"
