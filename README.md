# Getevents [![Build Status](https://travis-ci.org/blackbirdco/getevents.svg)](https://travis-ci.org/blackbirdco/getevents) [![Code Climate](https://codeclimate.com/repos/55ff1b0169568014780011e9/badges/032c08b2b3822bf8515d/gpa.svg)](https://codeclimate.com/repos/55ff1b0169568014780011e9/feed) [![Test Coverage](https://codeclimate.com/repos/55ff1b0169568014780011e9/badges/032c08b2b3822bf8515d/coverage.svg)](https://codeclimate.com/repos/55ff1b0169568014780011e9/coverage)

API wrapper for [getevents.co](https://getevents.co/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'getevents'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install getevents
```

## Usage

### Initialisation

You need to signup in order to get credentials. Then, initialize your client:

```ruby
Getevents.configure do |config|
  config.account_id = GETEVENTS_ACCOUNT_ID
  config.token      = GETEVENTS_TOKEN
end
```

For testing purpose inside your application:

```ruby
Getevents.configure do |config|
  config.test_mode = true
end
```

It will render empty arrays for each methods.

### Location

```ruby
locations = Getevents::Location.search('Paris')
location = locations.first

puts location.country
=> "France"
puts location.lng
=> -1.55336
```

### Event

```ruby
events = Getevents::Event.search(47.21, -1.55, { start_date: "20150921" })
event = events.first

puts event.name
=> "La fête de la grenouille"
puts event.start_date
=> "2015-09-21T00:00:00.000Z"
```

### Eventlisting

TODO (not yet implemented)

### Eventlisting curate

TODO (not yet implemented)

## Contributing

1. Fork it ( https://github.com/blackbirdco/getevents/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

### Run tests

```sh
$ GETEVENTS_ACCOUNT_ID=YOUR_ACCOUNT_ID GETEVENTS_TOKEN=YOUR_TOKEN rspec spec/
```

## Links

* [API Documentation](https://dev.getevents.co/api-docs.html)
