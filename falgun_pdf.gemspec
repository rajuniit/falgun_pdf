# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'falgun_pdf/version'

Gem::Specification.new do |spec|
  spec.name          = "falgun_pdf"
  spec.version       = FalgunPdf::VERSION
  spec.authors       = ["Raju Mazumder"]
  spec.email         = ["rajuniit@gmail.com"]
  spec.description   = %q{a phantomjs based pdf generator}
  spec.summary       = %q{a phantomjs based pdf generator}
  spec.homepage      = "http://github.com/rajuniit/falgun_pdf"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.requirements << 'phantomjs, v1.9.0 or greater'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
