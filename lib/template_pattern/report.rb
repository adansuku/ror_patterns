# frozen_string_literal: true

require 'date'

# Report class
class Report
  class << self
    def call(data)
      @data = data
      format
    end

    private

    def format
      raise(NoMethodError, 'implement in subclass!')
    end

    def year
      Date.today.year.to_s
    end
  end
end
