require_relative './sketch_init'
require 'controls/event_data/write'

subject = Controls::EventData::Write::JSON

Controls.output subject, :data
Controls.output subject, :text
