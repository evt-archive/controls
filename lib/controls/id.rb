require 'controls'

module Controls
  module ID
    def self.get(i=nil)
      i ||= 1

      first_octet = (i).to_s.rjust(8, '0')

      third_prefix = ['8', '9', 'A', 'B'].sample

      "#{first_octet}-0000-4000-#{third_prefix}000-000000000000"

      # NOTE This should become: Identifier::UUID::Controls::Incrementing.example(i) [Scott, Mon Oct 12 2015]
    end
  end
end
