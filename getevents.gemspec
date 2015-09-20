# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'getevents/version'

Gem::Specification.new do |spec|
  spec.name          = "getevents"
  spec.version       = Getevents::VERSION
  spec.authors       = ["Loïc Delmaire"]
  spec.email         = ["loic.delmaire@gmail.com"]
  spec.summary       = %q{API wrapper for getevents.co}
  spec.description   = %q{API wrapper for getevents.co}
  spec.homepage      = "https://github.com/blackbirdco/getevents"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "hashie"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "codeclimate-test-reporter"
end
