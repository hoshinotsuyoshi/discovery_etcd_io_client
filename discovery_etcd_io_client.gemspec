# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'discovery_etcd_io_client/version'

Gem::Specification.new do |spec|
  spec.name          = "discovery_etcd_io_client"
  spec.version       = DiscoveryEtcdIoClient::VERSION
  spec.authors       = ["hoshinotsuyoshi"]
  spec.email         = ["guitarpopnot330@gmail.com"]
  spec.summary       = %q{Client for discovery.etcd.io}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "etcd", "~> 0.2"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
