require_relative './event_data_init'

require 'controls/event_data/read'

subject = Controls::EventData::Read::JSON

Controls.output subject, :data
Controls.output subject, :text
