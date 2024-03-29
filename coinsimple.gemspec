# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coinsimple/version'

Gem::Specification.new do |spec|
  spec.name          = "coinsimple"
  spec.version       = Coinsimple::VERSION
  spec.authors       = ["nitzanbl"]
  spec.email         = ["nitzanblanko@gmail.com"]
  spec.summary       = "coinsimple ruby API"
  spec.description   = "coinsimple ruby API"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "http", "~> 0.6.3"
  spec.add_dependency "json", "~> 1.8.1"
  spec.add_dependency "hashit" , "~> 0.0.4"

end
