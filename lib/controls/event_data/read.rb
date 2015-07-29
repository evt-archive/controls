require 'controls'

Telemetry::Logger.get(self).debug "Loading: #{__FILE__}"

require 'controls/event_data/metadata'

module Controls
  module EventData
    module Read
      module JSON
        def self.data(increment=nil, time=nil)
          increment ||= 0

          reference_time = Time.reference
          time ||= reference_time

          id = ID.get(increment + 1)

          {
            'updated' => reference_time,
            'content' => {
              'eventType' => 'SomeEvent',
              'eventNumber' => increment,
              'eventStreamId' => 'someStream',
              'data' => {
                'someAttribute' => 'some value',
                'someTime' => time
              },
              'metadata' => EventData::Metadata::JSON.data
            },
            'links' => [
              {
                'uri' => "http://localhost:2113/streams/someStream/#{increment}",
                'relation' => 'edit'
              }
            ]
          }
        end

        def self.text
          data.to_json
        end
      end
    end
  end
end
