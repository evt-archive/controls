require_relative './event_data_init'

require 'controls/event_data/batch'

subject = Controls::EventData::Batch
Controls.output subject, :example

subject = Controls::EventData::Batch::JSON
Controls.output subject, :text
