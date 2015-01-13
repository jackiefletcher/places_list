require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe("#place_name") do
    it("will collect the name of the place") do
      test_place = Place.new("Portland, Oregon")
      expect(test_place.place_name()).to(eq("Portland, Oregon"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("will save the place") do
      test_place = Place.new("San Francisco, California")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("will clear out the saved places") do
      Place.new("Tokyo, Japan").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end

end
