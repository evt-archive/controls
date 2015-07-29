require_relative './sketch_init'
require 'controls/slice'

subject = Controls::Slice::JSON

Controls.output subject, :data
Controls.output subject, :text
