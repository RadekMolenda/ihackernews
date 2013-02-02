require 'yajl'
require 'yaml'

class Client
  def self.fetch_news
    Yajl::Parser.parse( Request.get(config["endpoint"]), symbolize_keys: true )
  end
  def self.config
    @config ||= ::YAML.load_file("config/api_endpoint.yml")
  end
end
