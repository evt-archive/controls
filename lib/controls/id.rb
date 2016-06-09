require 'controls'

module Controls
  module ID
    def self.get(i=nil, increment: nil, sample: nil)
      Identifier::UUID::Controls::Incrementing.example(i, increment: increment, sample: sample)
    end
  end
end
