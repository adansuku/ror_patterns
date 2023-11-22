# frozen_string_literal: true

require 'furniture/base'
require 'furniture/modern/chair'
require 'furniture/modern/table'

module Furniture
  module Modern
    # Furniture::Base
    class Factory < Furniture::Base
      def create_chair
        Furniture::Modern::Chair.new
      end

      def create_table
        Furniture::Modern::Table.new
      end
    end
  end
end
