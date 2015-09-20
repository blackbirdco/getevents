require 'json'

class Getevents::Location
  def self.search(city)
    new.search(city)
  end

  def search(city)
    request = raw_search(city)

    JSON.parse(request.body)["cities"].map do |city_hash|
      Hashie::Mash.new(city_hash)
    end
  end

  private

  def raw_search(city)
    connection.get do |req|
      req.url '/location'
      req.params['city'] = city
    end
  end

  def connection
    @connection ||= Getevents::Client.new.connection
  end
end
