require 'spec_helper'
require_relative '../lib/request'

describe Request do
  describe ".get" do
    context "with proper urls" do
      it "fetches document body", :vcr do
        expect(Request.get('http://api.ihackernews.com')).to include "DOCTYPE"
      end
    end
  end
  context "when site dos not exist" do
    it "raises en error", :vcr do
      expect{Request.get("http://www.google.com/404.html")}.to raise_error(CouldNotGetResource)
    end
  end
end
