require 'spec_helper'
require 'set'
require_relative '../lib/news_repo'

describe NewsRepo do
  let(:post1) { { points: 10 }}
  let(:post2) { { points: 15 }}
  let(:post3) { { points: 14 }}
  let(:post4) { { points: 120 }}
  let(:news){ [post1, post2, post3, post4] }
  describe '#above_median' do
    subject{ NewsRepo.new(news) }
    it "returns messages with score points above median" do
      expect(subject.above_median.to_set).to eq [post2, post4].to_set
    end
  end
end
