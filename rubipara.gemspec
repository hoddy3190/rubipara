# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubipara/version'

Gem::Specification.new do |spec|
  spec.name          = "rubipara"
  spec.version       = Rubipara::VERSION
  spec.authors       = ["hodaka"]
  spec.email         = ["altitude3190@gmail.com"]
  spec.summary       = "Rubipara is a portmanteau of Ruby and Pripara. Here are all of Pripara everyone loves."
  spec.description   = "Pripara is an excellent Japanese idol anime. When you approve something, let's say 'Kashikoma!' instead of 'OK'."
  spec.homepage      = "https://github.com/altitude3190/rubipara"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
