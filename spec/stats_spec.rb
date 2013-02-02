require_relative "../lib/stats"
require_relative "../lib/mode"

describe Stats do
  describe "validation" do
    it "raises exception when sample size is 0" do
      expect{Stats.new([])}.to raise_error SampleSizeIsZero
    end
  end
  describe "#mean" do
    it "should be correct" do
      expect(Stats.new([1]).mean).to eq 1
      expect(Stats.new([1, 2]).mean).to eq 1.5
      expect(Stats.new([0]).mean).to eq 0
      expect(Stats.new([-1, 1, -3]).mean).to eq -1.0
    end
  end

  describe "#median" do
    it "should be correct" do
      expect(Stats.new([1]).median).to eq 1
      expect(Stats.new([1, 2]).median).to eq 1.5
      expect(Stats.new([0]).median).to eq 0
      expect(Stats.new([-1, 1, -3]).median).to eq -1.0
      expect(Stats.new([-5, -1, 1, -3]).median).to eq -2
      expect(Stats.new([0, -1, 1, -3]).median).to eq -0.5
    end
  end

  describe "#mode" do
    it "calls right methods" do
      Mode.should_receive(:new).with([1, 2])
      Stats.new([1, 2]).mode
    end
  end

end
