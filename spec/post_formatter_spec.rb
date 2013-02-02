require_relative '../lib/post_formatter'

describe PostFormatter do
  let(:post) { {title: "Fancy Post", url: "http://www.some-where.ie", postedBy: "Joe Doe"}}

  describe "#to_s" do
    subject { PostFormatter.new(post) }
    it "formats post" do
      expect(subject.to_s).to eql "**********\nTitle: Fancy Post\nLink: http://www.some-where.ie\nAuthor: Joe Doe\n\n"
    end
  end
end