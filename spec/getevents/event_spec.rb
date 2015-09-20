describe Getevents::Event do
  describe "#search" do
    let(:lat) { 47.21725 }
    let(:lng) { -1.55336 }
    let(:params) { {} }

    subject { Getevents::Event.search(lat, lng, params) }

    describe "without params", vcr: { cassette_name: 'event_search' } do
      it { should be_a(Array) }

      it "performs a call only with lat & lng" do
        subject

        expect(WebMock).to have_requested(:get, Getevents::Client::URL+"/event").with(query: {
          lat: lat,
          lng: lng
        })
      end

      describe "one item" do
        subject { Getevents::Event.search(lat, lng, params).first }

        it { should have_key("id") }
        it { should have_key("name") }
        it { should have_key("description") }
      end
    end

    describe "with params", vcr: { cassette_name: 'event_search_with_extra_params' } do
      let(:params) { { start_date: "20150924", end_date: "20150924" } }

      it { should be_a(Array) }

      it "performs a call with lat, lng and these extra params" do
        subject

        expect(WebMock).to have_requested(:get, Getevents::Client::URL+"/event").with(query: {
          lat: lat,
          lng: lng,
          start_date: "20150924",
          end_date: "20150924"
        })
      end
    end
  end
end
