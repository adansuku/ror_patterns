# frozen_string_literal: true

require_relative './report'

# TXTReport class
class TXTReport < Report
  class << self
    private

    def format
      [format_header, format_body, format_footer].join
    end

    def format_header
      "#{year} Report"
    end

    def format_body
      "\n#{spacer}#{@data}\n#{spacer}"
    end

    def format_footer
      "#{year} @ Copyright Acme Inc."
    end

    def spacer
      "#{'-' * 72}\n"
    end
  end
end
