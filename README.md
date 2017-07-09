# CompactBlank

Adds `compact_blank` and `compact_blank!` to `Array` and `Hash`

[![Gem Version](https://badge.fury.io/rb/compact_blank.svg)](https://badge.fury.io/rb/compact_blank)
[![Build Status](https://travis-ci.org/sue445/compact_blank.svg?branch=master)](https://travis-ci.org/sue445/compact_blank)
[![Coverage Status](https://coveralls.io/repos/github/sue445/compact_blank/badge.svg)](https://coveralls.io/github/sue445/compact_blank)
[![Code Climate](https://codeclimate.com/github/sue445/compact_blank.png)](https://codeclimate.com/github/sue445/compact_blank)
[![Dependency Status](https://gemnasium.com/badges/github.com/sue445/compact_blank.svg)](https://gemnasium.com/github.com/sue445/compact_blank)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'compact_blank'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compact_blank

## Usage

### `Array#compact_blank`, `Array#compact_blank!`
```ruby
using CompactBlank

array = ["a", nil, "b", ""]

array.compact
#=> ["a", "b", ""]

array.compact_blank
#=> ["a", "b"]

array.compact_blank!
#=> ["a", "b"]
array
#=> ["a", "b"]
```

### `Hash#compact_blank`, `Hash#compact_blank!`
```ruby
using CompactBlank

hash = { a: "1", b: nil, c: "3", d: "" }

# NOTE: Hash#compact is feature of activesupport
hash.compact
#=> {:a=>"1", :c=>"3", :d=>""}

hash.compact_blank
#=> {:a=>"1", :c=>"3"}

hash.compact_blank!
#=> {:a=>"1", :c=>"3"}
hash
#=> {:a=>"1", :c=>"3"}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sue445/compact_blank.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

