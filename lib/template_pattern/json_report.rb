# frozen_string_literal: true

require 'json'
require_relative './report'

# JSONReport class
class JSONReport < Report
  class << self
    private

    def format_header
      { title: "#{year} Report" }
    end

    def format_body
      { data: @data }
    end

    def format_footer
      { footer: "#{year} @ Copyright Acme Inc." }
    end

    def format
      [format_header, format_body, format_footer]
        .inject({}) { |acc, h| acc.merge(h) }
        .to_json
    end
  end
end
