# frozen_string_literal: true

require 'furniture/products/table'

module Furniture
  module Regular
    # Extends from Furniture::Products::Table
    class Table < Furniture::Products::Table
      def material
        'plastic'
      end
    end
  end
end
