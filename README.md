# Rspec Clickable Output

If you use the latest version of [iTerm2](http://www.iterm2.com/#/section/home), you don't need this, just command-click on any file path to open it.

This gem transforms RSpec's backtrace output in your OSX shell to clickable links, so you can open failing specs more easily.


## TextMate

Should work by default

## Sublime Text 2

You will need to install [subl-handler](https://github.com/asuth/subl-handler)

## Installation

Add this line to your application's Gemfile:

    gem 'rspec_clickable_output'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_clickable_output

## Usage

When the test fails, the backtrace line should be clickable when you hold down cmd key.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
