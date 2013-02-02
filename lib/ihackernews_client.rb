require 'forwardable'
require_relative './stats'

class IhackernewsClient
  extend Forwardable

  def_delegators :stats, :median, :mode, :mean

  def initialize(news)
    @news = news
  end

  def news
    @news.select{ |post| post[:points] > median }
  end

  private
  def stats
    @stats ||= Stats.new(@news.map{|post| post[:points]})
  end
end
