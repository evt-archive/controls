require_relative 'test_init'

Runner.! 'scripts/**/*.rb' do |exclude|
  exclude =~ /(_init.rb)\z/
end
