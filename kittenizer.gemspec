# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kittenizer/version'

Gem::Specification.new do |spec|
  spec.name          = "kittenizer"
  spec.version       = Kittenizer::VERSION
  spec.authors       = ["ken1flan"]
  spec.email         = ["ken1flan@gmail.com"]

  spec.summary       = %q{Transrate Japanese to Japanese cat language.}
  spec.homepage      = "https://github.com/ken1flan/kittenizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
