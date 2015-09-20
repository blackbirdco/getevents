describe Getevents::Location do
  describe "#search", vcr: { cassette_name: 'location_search' } do
    subject { Getevents::Location.search(city) }

    let(:city) { "Nantes" }

    it { should be_a(Array) }

    describe "one item" do
      subject { Getevents::Location.search(city).first }

      it do
        should == {
          "elevation" => "",
          "area" => "Pays de la Loire",
          "continent" => "Europe",
          "country" => "France",
          "lng" => -1.55336,
          "city" => "Nantes",
          "timezone" => "Europe/Paris",
          "area_code" => "B5",
          "alternate" => "NTE,Nant,Nante,Nantes,Nanto,Naoned,Portus Namnetus,nan te,nant,nanta,nanto,Нант,נאנט,نانت,नांत,ナント,南特",
          "continent_code" => "EU",
          "dem" => 19,
          "population" => 277269,
          "geo" => [
            -1.55336,
            47.21725
          ],
          "country_code" => "FR",
          "modified" => "2011-12-08",
          "_id" => 2990969,
          "region" => "Nantes",
          "lat" => 47.21725
        }
      end
    end
  end
end
