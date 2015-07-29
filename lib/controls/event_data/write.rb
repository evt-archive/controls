require 'controls'

Telemetry::Logger.get(self).debug "Loading: #{__FILE__}"

require 'controls/event_data/metadata'
require 'controls/stream_name'

module Controls
  module EventData
    module Write
      module JSON
        def self.data(id=nil)
          id ||= Controls::ID.get

          {
            'eventId' => id,
            'eventType' => 'SomeType',
            'data' => {'someAttribute' => 'some value'},
            'metadata' => EventData::Metadata::JSON.data
          }
        end

        def self.text
          data.to_json
        end
      end

      def self.example(id=nil)
        id ||= ID.get

        event_data = EventStore::Client::HTTP::EventData::Write.build

        event_data.id = id

        event_data.type = 'SomeType'

        event_data.data = {
          'some_attribute' => 'some value'
        }

        event_data.metadata = EventData::Metadata.data

        event_data
      end

      def self.write(count=nil, stream_name=nil)
        count ||= 1

        stream_name = Controls::StreamName.get stream_name
        path = "/streams/#{stream_name}"

        post = EventStore::Client::HTTP::Request::Post.build

        count.times do |i|
          i += 1

          id = Controls::ID.get(i)

          event_data = Controls::EventData::Batch.example(id)

          json_text = event_data.serialize

          post_response = post.! json_text, path
        end

        stream_name
      end
    end
  end
end
