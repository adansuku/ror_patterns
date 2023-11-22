# frozen_string_literal: true

require 'furniture/products/chair'

module Furniture
  module Regular
    # Furniture::Products::Chair
    class Chair < Furniture::Products::Chair
      def leg_count
        4
      end

      def cushion?
        true
      end
    end
  end
end
