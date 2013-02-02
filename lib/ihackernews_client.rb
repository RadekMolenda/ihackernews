require 'yaml'
require_relative './stats'
require_relative './client'
require_relative './request'

class IhackernewsClient
  def news
    all_news.select{ |post| post[:points] > stats.median }
  end

  def stats
    @stats ||= Stats.new(all_news.map{|post| post[:points]})
  end

  def all_news
    @news ||= Client.fetch(endpoint)[:items]
  end

  private
  def endpoint
    YAML.load_file('config/api_endpoint.yml').fetch('endpoint')
  end
end
