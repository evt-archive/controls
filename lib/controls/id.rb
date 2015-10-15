require 'controls'

module Controls
  module ID
    def self.get(i=nil, sample: false)
      Identifier::UUID::Controls::Incrementing.example(i, sample: sample)
    end
  end
end
