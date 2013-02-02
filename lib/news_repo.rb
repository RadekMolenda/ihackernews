require 'forwardable'
require_relative './sample'

class NewsRepo
  extend Forwardable

  def_delegators :sample, :median, :mode, :mean

  def initialize(news)
    @news = news
  end

  def above_median
    @news.select{ |post| post[:points] > median }
  end

  private
  def sample
    @sample ||= Sample.new(@news.map{|post| post[:points]})
  end
end
