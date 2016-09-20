require 'telemetry/logger'

logger =Telemetry::Logger.get __FILE__
logger.level = :obsolete
logger.warn %{This library is obsolete; to remove this warning, remove reference to `require "controls"'}
logger.obsolete <<~TEXT
The controls library is being phased out; please use the controls found in the
clock and identifier gems directly. In the future, this library will be removed.

(Marked obsoluete by Nathan Ladd on Tue 20 Sep 2016)
TEXT

require 'identifier/uuid'
require 'identifier/uuid/controls'

require 'clock'
require 'clock/controls'

module Controls
  Time = Clock::Controls::Time

  module ID
    def self.get(*arguments)
      Identifier::UUID::Controls::Incrementing.example(*arguments)
    end
    singleton_class.send :alias_method, :example, :get

    module Random
      def self.example
        Identifier::UUID::Controls::Random.example
      end
    end
  end
end
