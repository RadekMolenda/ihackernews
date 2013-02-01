require_relative "../lib/sample"

describe Sample do
  describe "validation" do
    it "raises exception when sample size is 0" do
      expect{Sample.new([])}.to raise_error SampleSizeIsZero
    end
  end
  describe "#mean" do
    it "should be correct" do
      expect(Sample.new([1]).mean).to eq 1
      expect(Sample.new([1, 2]).mean).to eq 1.5
      expect(Sample.new([0]).mean).to eq 0
      expect(Sample.new([-1, 1, -3]).mean).to eq -1.0
    end
  end

  describe "#median" do
    it "should be correct" do
      expect(Sample.new([1]).median).to eq 1
      expect(Sample.new([1, 2]).median).to eq 1.5
      expect(Sample.new([0]).median).to eq 0
      expect(Sample.new([-1, 1, -3]).median).to eq -1.0
      expect(Sample.new([-5, -1, 1, -3]).median).to eq -2
      expect(Sample.new([0, -1, 1, -3]).median).to eq -0.5
    end
  end

end
