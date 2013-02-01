require 'net/http'

class CouldNotGetResource < Exception
end

class Request
  def self.get(url)
    response = Net::HTTP.get_response(URI(url))
    case response
    when Net::HTTPSuccess
      response.body
    else
      raise CouldNotGetResource
    end
  end
end
