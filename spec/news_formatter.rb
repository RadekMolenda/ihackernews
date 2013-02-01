require_relative "../lib/news_formatter"

describe NewsFormatter do
  let(:post) { stub(:post, :to_s => "post") }
  let(:news) { [post, post, post] }
  describe "#to_s" do
    subject { NewsFormatter.new(news) }
    it "generates the right output" do
      expect(subject.to_s).to eq "post\npost\npost"
    end
  end
end
