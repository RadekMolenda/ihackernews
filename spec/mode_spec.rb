require_relative '../lib/mode'

describe Mode do
  describe "#to_s" do
    context "when not bimodal" do
      it "should be one value only" do
        expect(Mode.new([1,1,2,3]).to_s).to eq "1"
        expect(Mode.new([1,1,2,2,2,3]).to_s).to eq "2"
      end
    end
    context "when bimodal" do
      it "should have more values" do
        expect(Mode.new([1,1,2,3,3]).to_s).to eq "is bimodal - [1, 3]"
        expect(Mode.new([1,1,2,2,3]).to_s).to eq "is bimodal - [1, 2]"
      end
    end
  end
end
