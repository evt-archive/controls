require_relative './sketch_init'

subject = Contols::EventData::Read::JSON

Controls.output subject, :data
Controls.output subject, :text
