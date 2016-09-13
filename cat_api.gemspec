# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cat_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'cat_api'
  spec.version       = CatAPI::VERSION
  spec.authors       = ['Chris Fritz']
  spec.email         = ['chrisvfritz@gmail.com']
  spec.summary       = %q{CatAPI is a Ruby gem to facilitate communication with the Cat API.}
  spec.description   = %q{CatAPI is a Ruby gem to facilitate communication with the Cat API.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client', '~> 2.0.0'
  spec.add_dependency 'nokogiri', '~> 1.6.5'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'simplecov', '~> 0.9.1'
  spec.add_development_dependency 'guard-rspec', '~> 4.5.0'
end
