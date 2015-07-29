ENV['CONSOLE_DEVICE'] ||= 'stdout'
ENV['LOG_COLOR'] ||= 'on'
ENV['LOG_LEVEL'] ||= 'data'

puts RUBY_DESCRIPTION

require_relative '../init.rb'
require 'runner'

TestLogger = Telemetry::Logger.get 'Test Output'

def logger(name)
  name = name.split('/').last
  Telemetry::Logger.get "-- TEST -- #{name}"
end
