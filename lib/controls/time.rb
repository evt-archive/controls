require 'controls'

module Controls
  module Time
    def self.example
      ISO8601.example
    end
    def self.reference; example; end

    module ISO8601
      def self.example
        Clock::UTC.iso8601(Raw.example)
      end
    end

    module Raw
      def self.example
        ::Time.utc(2000)
      end
    end
  end
end
