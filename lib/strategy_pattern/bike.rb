# frozen_string_literal: true

require "strategy/vehicle"

module Strategy
# Bike class
  class Bike < Vehicle
    ERROR_CORRECTION = 5

    def calculate_route(source, destination)
      [source.length, destination.length].inject(&squared) + ERROR_CORRECTION
    end

  private

    def squared = -> (a, b) { a * b ** 2 }
  end
end
