class Getevents::Client
  URL = "https://api.getevents.co"

  attr_reader :connection

  def initialize
    if test_mode?
      @connection = Getevents::FakeClient.new
    else
      @connection = Faraday.new(url: URL) do |faraday|
        faraday.headers["Authorization"] = "GetEvents #{account_id}:#{token}"
        faraday.adapter Faraday.default_adapter
      end
    end
  end

  def account_id
    Getevents.configuration.account_id
  end

  def token
    Getevents.configuration.token
  end

  def test_mode?
    Getevents.configuration.test_mode
  end
end
