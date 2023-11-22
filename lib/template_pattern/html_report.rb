# frozen_string_literal: true

require_relative './report'

# Class HTMLReport to format in HTML.
class HTMLReport < Report
  class << self
    private

    def format
      [format_header, format_body, format_footer].join
    end

    # Header
    def format_header
      <<~HTML
        <!DOCTYPE html>
        <html>
        <head>
          <title>#{year} Report</title>
        </head>
      HTML
    end

    # body
    def format_body
      <<~HTML
        <body>
          #{@data}
        </body>
      HTML
    end

    # Footer
    def format_footer
      <<~HTML
        <footer>
          #{year} Copyright Acme Inc.
        </footer>
        </html>
      HTML
    end
  end
end
