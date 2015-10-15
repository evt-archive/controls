# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'controls'
  s.summary = 'Test controls'
  s.version = '0.0.0'
  s.authors = ['']
  s.require_paths = ['lib']
  s.files = Dir.glob('{lib}/**/*')
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2'

  s.add_runtime_dependency 'dependency'
  s.add_runtime_dependency 'telemetry-logger'
  s.add_runtime_dependency 'identifier-uuid'
  s.add_runtime_dependency 'clock'
  s.add_runtime_dependency 'settings'
  s.add_runtime_dependency 'schema'
  s.add_runtime_dependency 'casing'
end
