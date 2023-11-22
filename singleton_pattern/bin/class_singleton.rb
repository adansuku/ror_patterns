# frozen_string_literal: true

class ClassSingleton
  class << self
    attr_writer :name
  end

  class << self
    attr_reader :name
  end
end

puts ClassSingleton.name = 'John'
puts ClassSingleton.name
