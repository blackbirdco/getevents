require "faraday"
require "json"
require "hashie/mash"

require "getevents/version"
require "getevents/client"
require "getevents/location"

module Getevents
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :testing_mode, :account_id, :token

    def initialize
      @testing_mode = false
      @account_id = nil
      @token = nil
    end
  end
end
