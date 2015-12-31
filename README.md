# Itamae::Plugin::Recipe::RubyNg

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-ruby_ng'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-ruby_ng

## Usage

```ruby
include_recipe 'ruby_ng'

ruby_ng do
  version '2.1'             # default is 2.2
  gems ['bundler', 'rails'] # optional
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/itamae-plugin-recipe-ruby_ng.

## License

The gem is available as open source under the terms of the [MIT License](http://chiastolite.mit-license.org).

