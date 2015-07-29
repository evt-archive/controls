require 'controls'

Telemetry::Logger.get(self).debug "Loading: #{__FILE__}"

module Controls
  module EventData
    module Metadata
      def self.data
        {
          some_meta_attribute: 'some meta value'
        }
      end

      module JSON
        def self.data
          {
            'someMetaAttribute' => 'some meta value'
          }
        end
      end
    end
  end
end
