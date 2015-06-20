# AwesomeParser

Take an awesome list (like one from https://github.com/sindresorhus/awesome)
and parse out each item!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'awesome_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install awesome_parser

## Usage

### Get a particular awesome list, convert to JSON

    USER=sindresorhus
    REPO=awesome-nodejs
    curl -H "Accept: application/vnd.github.VERSION.raw" https://api.github.com/repos/$USER/$REPO/readme | ruby -Ilib bin/awesome2json

## Contributing

1. Fork it ( https://github.com/willcodeforfoo/awesome_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
