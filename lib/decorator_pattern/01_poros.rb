# frozen_string_literal: true

# Human
class Human
  def response_to_temperature(environment_temp)
    environment_temp > 20 ? 'Feeling warm' : 'Feeling cold'
  end
end

# TShirt
class TShirt
  def initialize(human)
    @human = human
  end

  def response_to_temperature(environment_temp)
    environment_temp >= 30 ? 'Time for a swim' : @human.response_to_temperature(environment_temp)
  end
end

# Jacket
class Jacket
  def initialize(human)
    @human = human
  end

  def response_to_temperature(environment_temp)
    environment_temp >= 35 ? 'Extremely hot' : @human.response_to_temperature(environment_temp)
  end
end

# Example usage
environment_temp = 30

bob = Human.new
puts bob.response_to_temperature(environment_temp)
bob_tshirt = TShirt.new(bob)
puts bob_tshirt.response_to_temperature(environment_temp)
bob_jacket = Jacket.new(bob_tshirt)
puts bob_jacket.response_to_temperature(environment_temp)
puts "Class: #{bob_jacket.class}"
