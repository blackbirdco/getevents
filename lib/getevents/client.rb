class Getevents::Client
  URL = "https://api.getevents.co"

  attr_reader :connection

  def initialize
    @connection = Faraday.new(url: URL) do |faraday|
      faraday.headers["Authorization"] = "GetEvents #{account_id}:#{token}"
      faraday.adapter Faraday.default_adapter
    end
  end

  def account_id
    Getevents.configuration.account_id
  end

  def token
    Getevents.configuration.token
  end
end
