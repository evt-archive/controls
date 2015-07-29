require 'controls'

Telemetry::Logger.get(self).debug "Loading: #{__FILE__}"

require 'controls/event_data/write'

module Controls
  module EventData
    module Batch
      def self.example(id=nil)
        id ||= ID.get

        batch = EventStore::Client::HTTP::EventData::Batch.build
        batch.add EventData::Write.example(id)
        batch
      end

      module JSON
        def self.text
          Batch.example.serialize
        end
      end
    end
  end
end
