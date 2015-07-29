require_relative './event_data_init'

require 'controls/event_data/storage'

subject = Controls::EventData::Write::Storage
Controls.output subject, :write, 1, 'someStream'
