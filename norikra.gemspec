# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'norikra/version'

Gem::Specification.new do |spec|
  spec.name          = "norikra"
  spec.version       = Norikra::VERSION
  spec.authors       = ["TAGOMORI Satoshi"]
  spec.email         = ["tagomoris@gmail.com"]
  spec.summary       = %q{CEP engine/server with Esper and JRuby}
  spec.description   = %q{CEP: Complex Event Processor with Esper EPL qeury language, messagepack rpc for inbound event data}
  spec.homepage      = "https://github.com/tagomoris/norikra"
  spec.license       = "GPLv2"
  spec.platform      = "java"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "esper"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end