module Getevents::Utils
  protected

  def format_response_collection(request, key)
    JSON.parse(request.body)[key].map do |city_hash|
      Hashie::Mash.new(city_hash)
    end
  end

  def connection
    @connection ||= Getevents::Client.new.connection
  end
end
