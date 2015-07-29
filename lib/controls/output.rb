require 'controls'

Telemetry::Logger.get(self).debug "Loading: #{__FILE__}"

module Controls
  def self.output(mod, meth, *args, source: nil)
    if source.nil?
      c = caller[0]
      caller_file = c.split(':')[0]
      source = caller_file
    end

    data = mod.send meth, *args

    logger(source).data "Subject: #{mod.name}.#{meth}"
    logger(source).data "Args: #{args * ', '}" unless args.empty?
    logger(source).data "Result: #{data.inspect}"
  end
end
