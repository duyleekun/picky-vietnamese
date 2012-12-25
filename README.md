# Picky::Vietnamese

Vietnamese substituter for Picky search engine (Remove all diacritics)
NOTE: Lower case all letters for now

## Installation

Add this line to your application's Gemfile:

    gem 'picky-vietnamese'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install picky-vietnamese

## Usage

Add this to index and/or search config for Vietnamese diacritic support
```ruby
substitutes_characters_with: Picky::Vietnamese::Substituter.new
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
