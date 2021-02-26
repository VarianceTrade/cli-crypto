# CliCrypto

This gem displays a list of popular crypto currencies and gives the option to get more details about the crypto currency.
The application will connect to the cryptonator api to fetch the latest data on the crypto currency.
Data includes the crypto currency's: current price, current volume, and percentage change.

## Architecture

The `CliCrypto::Api` class handles fetching data from the api and storing the results into an array.
The crypto data is represented by a class called `CliCrypto::CryptoCurrency` that allows easy access to each crypto currency's set of statistics.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cli_crypto'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cli_crypto

## Usage

To run the app enter the following in the terminal:

    $ bin/cli-crypto

The menu is displayed and the user will enter a number to display a specific crypto currency.

    $ Choose A Crypto Currency To See More Details, Or Press X To Exit: 


After seeing the details, the user can enter `x` to exit or enter another number to see the details of another crypto currency.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/cli_crypto. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/<github username>/cli_crypto/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CliCrypto project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/<github username>/cli_crypto/blob/master/CODE_OF_CONDUCT.md).
