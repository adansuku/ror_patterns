# frozen_string_literal: true

# ModuleSingleton example
module ModuleSingleton
  def self.name=(name)
    @name = name
  end

  def self.name
    @name
  end
end

puts ModuleSingleton.name = 'John'
puts ModuleSingleton.name
