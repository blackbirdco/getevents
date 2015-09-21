require "faraday"
require "json"
require "hashie/mash"

require "getevents/version"
require "getevents/utils"
require "getevents/client"
require "getevents/fake_client"
require "getevents/location"
require "getevents/event"

module Getevents
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :test_mode, :account_id, :token

    def initialize
      @test_mode = false
      @account_id = nil
      @token = nil
    end
  end
end
