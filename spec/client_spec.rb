require 'spec_helper'
require_relative '../lib/request'
require_relative '../lib/client'

describe Client do
  describe '#fetch' do
    subject { Client.fetch 'http://api.ihackernews.com/page' }
    it "fetches json data", :vcr do
      expect(subject).not_to be_empty
    end
    it "fetches items", :vcr do
      expect(subject[:items]).not_to be_empty
    end
  end
end
