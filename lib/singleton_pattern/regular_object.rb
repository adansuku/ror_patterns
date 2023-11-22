# frozen_string_literal: true

# RegularObject example
class RegularObject
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

puts RegularObject.new('John').name
puts RegularObject.new('Mary').name
