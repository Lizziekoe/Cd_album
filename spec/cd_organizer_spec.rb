require('rspec')
require('cd_organizer')
require('pry')

describe(Cd) do
  # before () do

  describe(".all") do
    it("will be empty at first") do
      expect(Cd.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("will save an entry to the array") do
      test_cd = Cd.new({:artist => "Windus", :album => "Patterson"})
      test_cd.save()
      expect(Cd.all()).to(eq([test_cd]))
    end
  end


  describe(".clear") do
    it("will empty the class variable") do
      test_cd = Cd.new({:artist => "Windus", :album => "Patterson"}).save()
      Cd.clear
      expect(Cd.all()).to(eq([]))
    end
  end

  describe(".search") do
    it("will return entire object when artist or album is searched") do
      test_cd = Cd.new({:artist => "Whitney Houston", :album => "Shockathon"}).save()
      expect(Cd.search("Shockathon")).to(eq(test_cd))
    end
  end
end
