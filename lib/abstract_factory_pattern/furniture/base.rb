# frozen_string_literal: true

module Furniture
  # Base class
  class Base
    # Returns an abstract Chair
    def create_chair
      raise('not implemented')
    end

    # Returns an abstract Table
    def create_table
      raise('not implemented')
    end
  end
end
