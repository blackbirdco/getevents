class Getevents::Location
  include Getevents::Utils

  def self.search(city)
    new.search(city)
  end

  def search(city)
    format_response_collection(raw_search(city), "cities")
  end

  private

  def raw_search(city)
    connection.get do |req|
      req.url '/location'
      req.params['city'] = city
    end
  end
end
