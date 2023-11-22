# frozen_string_literal: true

$LOAD_PATH.unshift(__dir__) unless $LOAD_PATH.include?(__dir__)

require 'furniture/factory'

# Endpoint Class entry
class Endpoint
  def self.category(params)
    category = params['category'].to_sym
    factory = Furniture::Factory.for(category)
    chair = factory.create_chair
    table = factory.create_table

    puts <<~TEXT
      Chair has #{chair.leg_count} legs and #{chair.cushion? ? '' : 'no'} cushion.
      Table is made of #{table.material}.
    TEXT
  end
end

params = { 'category' => 'xxx' }
Endpoint.category(params)
