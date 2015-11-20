require 'controls'

module Controls
  module Time
    def self.example
      Clock::UTC.iso8601(::Time.utc(2000))
    end
    def self.reference; example; end
  end
end
