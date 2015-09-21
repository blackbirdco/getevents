describe Getevents::Location do
  let(:city) { "Nantes" }

  describe "#search", vcr: { cassette_name: 'location_search' } do
    subject { Getevents::Location.search(city) }

    it { should be_a(Array) }

    describe "one item" do
      subject { Getevents::Location.search(city).first }

      it { should have_key("city") }
      it { should have_key("area") }
    end
  end

  describe "in test mode" do
    subject { Getevents::Location.search(city) }

    before do
      Getevents.configuration.test_mode = true
    end

    it { should == [] }

    it "doesn't perform an http call" do
      subject

      expect(WebMock).not_to have_requested(:get, Getevents::Client::URL+"/location")
    end

    after do
      Getevents.configuration.test_mode = false
    end
  end
end
