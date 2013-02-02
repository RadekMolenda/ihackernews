require 'spec_helper'
require_relative '../lib/ihackernews_client'

describe IhackernewsClient, :vcr do
  subject{ IhackernewsClient.new }
  let(:all_news){ subject.all_news }
  let(:stats){ subject.stats }
  describe '#news' do
    it "returns news with score points above median" do
      subject.news.each do |post|
        expect(post[:points]).to be > stats.median
      end
    end
    it "returns news that are part of the all_news" do
      subject.news.each do |post|
        expect(all_news).to include post
      end
    end
    it "returns just a part of the all_news" do
      expect(subject.news.length).to be < all_news.length
    end
  end
end
