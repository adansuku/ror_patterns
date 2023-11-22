# frozen_string_literal: true

require "strategy/vehicle"

module Strategy
#Car class
  class Car < Vehicle
    def calculate_route(source, destination)
      [source.length, destination.length].inject(&mul)
    end

  private

    def mul = -> (a, b) { a * b }
  end
end
