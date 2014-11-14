require "norwegian_ssn/generator"

describe NorwegianSSN::Generator do
  describe ".random_time" do
    it "generates a random time" do
      expect(subject.random_time).to be_instance_of Time
    end
  end

  describe ".day" do
    it "generates a random day" do
      expect(subject.formatted_day.to_i).to be_between(1, 31)
    end
  end

  describe ".month" do
    it "generates a random month" do
      expect(subject.formatted_month.to_i).to be_between(1, 12)
    end
  end

  describe ".year" do
    it "generates a random year" do
      expect(subject.formatted_year.to_i).to be_between(0, 5000)
    end
  end

  describe ".individual" do
    it "generates a random individual" do
      expect(subject.individual).to be_between(0, 999)
    end
  end
end
