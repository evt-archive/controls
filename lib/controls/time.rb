require 'controls'

module Controls
  module Time
    def self.reference
      Clock::UTC.iso8601(::Time.utc(2000))
    end
  end
end
