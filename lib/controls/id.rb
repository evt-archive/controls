require 'controls'

Telemetry::Logger.get(self).debug "Loading: #{__FILE__}"

module Controls
  module ID
    def self.get(i=nil)
      i ||= 1

      first_octet = (i).to_s.rjust(8, '0')

      "#{first_octet}-0000-0000-0000-000000000000"
    end
  end
end
