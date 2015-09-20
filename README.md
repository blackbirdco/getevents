# Getevents

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
  config.testing_mode = true
end
```

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

TODO (not yet implemented)

### Eventlisting

TODO (not yet implemented)

### Eventlisting curate

TODO (not yet implemented)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/getevents/fork )
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
