require 'json'

require 'dependency'
Dependency.activate
require 'telemetry/logger'
require 'uuid'
require 'clock'
require 'settings'
require 'schema'
Settings.activate
require 'casing'

require 'event_store/client/http'
