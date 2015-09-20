describe Getevents::Location do
  describe "#search", vcr: { cassette_name: 'location_search' } do
    subject { Getevents::Location.search(city) }

    let(:city) { "Nantes" }

    it { should be_a(Array) }

    describe "one item" do
      subject { Getevents::Location.search(city).first }

      it { should have_key("city") }
      it { should have_key("area") }
    end
  end
end
