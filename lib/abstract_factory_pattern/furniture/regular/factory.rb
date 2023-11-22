# frozen_string_literal: true

require 'furniture/base'
require 'furniture/regular/chair'
require 'furniture/regular/table'

module Furniture
  module Regular
    # Extends from Furniture::Base
    class Factory < Furniture::Base
      def create_chair
        Furniture::Regular::Chair.new
      end

      def create_table
        Furniture::Regular::Table.new
      end
    end
  end
end
