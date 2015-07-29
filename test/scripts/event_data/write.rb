require_relative './event_data_init'

require 'controls/event_data/write'

subject = Controls::EventData::Write::JSON
Controls.output subject, :data
Controls.output subject, :text

subject = Controls::EventData::Write
Controls.output subject, :example
