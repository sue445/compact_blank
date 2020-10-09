source 'https://rubygems.org'

# Specify your gem's dependencies in compact_blank.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.3.0")
  # N0TE: unparser v0.5.0+ requires ruby 2.3.0+
  gem "unparser", "< 0.5.0"
end
