source 'https://rubygems.org'

# Specify your gem's dependencies in compact_blank.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.2.2")
  # NOTE: activesupport v5.0.0+ requires ruby 2.2.2+
  gem "activesupport", "< 5.0.0"
end
