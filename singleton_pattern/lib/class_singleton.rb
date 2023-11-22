# frozen_string_literal: true

# ClassSingleton example
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
