# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'controls'
  s.version = '0.0.2.0'
  s.summary = 'Test controls'
  s.description = ' '

  s.authors = ['Obsidian Software, Inc']
  s.email = 'opensource@obsidianexchange.com'
  s.homepage = 'https://github.com/obsidian-btc/controls'
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.2.3'

  s.add_runtime_dependency 'identifier-uuid'
  s.add_runtime_dependency 'clock'
end
