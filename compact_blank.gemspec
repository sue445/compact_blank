# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compact_blank/version'

Gem::Specification.new do |spec|
  spec.name          = "compact_blank"
  spec.version       = CompactBlank::VERSION
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]

  spec.summary       = %q{Adds compact_blank and compact_blank! to Array and Hash}
  spec.description   = %q{Adds compact_blank and compact_blank! to Array and Hash}
  spec.homepage      = "https://github.com/sue445/compact_blank"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.required_ruby_version = ">= 2.2.2"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "< 6.1.0.rc1"

  spec.add_development_dependency "bundler", ">= 1.14"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-parameterized"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "unparser", ">= 0.4.5"
end
