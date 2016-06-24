require 'controls'

module Controls
  module ID
    def self.get(i=nil, increment: nil, sample: nil)
      Identifier::UUID::Controls::Incrementing.example(i, increment: increment, sample: sample)
    end
    def self.example(i=nil, increment: nil, sample: nil); get(i=nil, increment: increment, sample: increment); end

    module Random
      def self.example
        Identifier::UUID::Controls::Random.example
      end
    end
  end
end
