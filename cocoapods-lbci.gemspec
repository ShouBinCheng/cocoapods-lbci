# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-lbci/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-lbci'
  spec.version       = CocoapodsLbci::VERSION
  spec.authors       = ['程守斌']
  spec.email         = ['15757117989@163.com']
  spec.description   = %q{A short description of cocoapods-lbci.}
  spec.summary       = %q{A longer description of cocoapods-lbci.}
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-lbci'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
