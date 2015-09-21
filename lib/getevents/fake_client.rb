class Getevents::FakeClient
  def get(url=nil, params=nil, headers=nil, &block)
    OpenStruct.new(body: fake_payload.to_json)
  end

  private

  def fake_payload
    {
      "events" => [],
      "cities" => []
    }
  end
end
