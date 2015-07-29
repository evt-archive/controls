require_relative './scripts_init'
require 'controls/event_data/storage'

subject = Controls::EventData::Write::Storage
Controls.output subject, :write, 1, 'someStream'
