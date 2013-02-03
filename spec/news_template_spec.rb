require_relative "../lib/news_template"
require_relative "../lib/post_template"

describe NewsTemplate do
  let(:post) { stub(:post, :to_s => "post") }
  let(:news) { [post, post, post] }
  describe "#to_s" do
    subject { NewsTemplate.new(news) }
    it "generates the right output" do
      PostTemplate.should_receive(:new).exactly(3).times.with(post).and_return("post")
      expect(subject.to_s).to eq "post\npost\npost"
    end
  end
end
