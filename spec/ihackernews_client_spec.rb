require 'spec_helper'
require 'set'
require_relative '../lib/ihackernews_client'

describe IhackernewsClient do
  let(:post1) { { points: 10 }}
  let(:post2) { { points: 15 }}
  let(:post3) { { points: 14 }}
  let(:post4) { { points: 120 }}
  let(:news){ [post1, post2, post3, post4] }
  describe '#news' do
    subject{ IhackernewsClient.new }
    it "returns messages with score points above median" do
      pending
    end
  end
end
