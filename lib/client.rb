require 'yajl'

class Client
  def self.fetch(url)
    Yajl::Parser.parse( Request.get(url), symbolize_keys: true )
  end
end
