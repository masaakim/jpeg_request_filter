# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jpeg_request_filter/version'

Gem::Specification.new do |spec|
  spec.name          = "jpeg_request_filter"
  spec.version       = JpegRequestFilter::VERSION
  spec.authors       = ["Masaaki Morishita"]
  spec.email         = ["ikasama3.0@gmail.com"]
  spec.summary       = %q{jpeg request filter}
  spec.description   = %q{jpeg request filter}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
