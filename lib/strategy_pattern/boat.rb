# frozen_string_literal: true

require "strategy/vehicle"

module Strategy
#boat class
  class Boat < Vehicle
    def calculate_route(source, destination)
      [source.length, destination.length].inject(&cubed)
    end

  private

    def cubed = -> (a, b) { a * b ** 3 }
  end
end
