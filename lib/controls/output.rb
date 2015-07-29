require 'controls'

Telemetry::Logger.get(self).trace "Loaded: #{__FILE__}"

module Controls
  def self.output(mod, meth, source=nil)
    if source.nil?
      c = caller[0]
      caller_file = c.split(':')[0]
      source = caller_file
    end

    data = mod.send meth
    msg = "#{mod.name}.#{meth} (#{data.class}) #{data.inspect}"
    logger(source).data msg
  end
end
