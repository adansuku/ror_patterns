# frozen_string_literal: true

require 'furniture/products/table'

module Furniture
  module Modern
    # Furniture::Products::Table
    class Table < Furniture::Products::Table
      def material
        'glass'
      end
    end
  end
end
