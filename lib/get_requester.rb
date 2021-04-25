require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 

    def initialize(url)
      @url = url
    end
    #initialize the url that gets passed in 
    def get_response_body 
        #parse url to uri 
        uri = URI.parse(@url)
        #net-http runs a get response from the uri
        response = Net::HTTP.get_response(uri)
        response.body
    end 

    def parse_json
        data = JSON.parse(get_response_body)
    end 

end