module Controls
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
