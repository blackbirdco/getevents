require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'getevents'
require 'vcr'

RSpec.configure do |config|
  config.before(:suite) do
    Getevents.configure do |c|
      c.account_id = ENV['GETEVENTS_ACCOUNT_ID']
      c.token      = ENV['GETEVENTS_TOKEN']
    end
  end
end

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr"
  config.hook_into :webmock
  config.configure_rspec_metadata!

  config.filter_sensitive_data("<GETEVENTS_ACCOUNT_ID>") { ENV['GETEVENTS_ACCOUNT_ID'] }
  config.filter_sensitive_data("<GETEVENTS_TOKEN>") { ENV['GETEVENTS_TOKEN'] }
end
