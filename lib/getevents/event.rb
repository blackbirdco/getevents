class Getevents::Event
  include Getevents::Utils

  def self.search(lat, lng, params={})
    new.search(lat, lng, params)
  end

  def search(lat, lng, params={})
    format_response_collection(raw_search(lat, lng, params), "events")
  end

  private

  def raw_search(lat, lng, params)
    connection.get do |req|
      req.url '/event'
      req.params = params.merge({
        lat: lat,
        lng: lng
      })
    end
  end
end
