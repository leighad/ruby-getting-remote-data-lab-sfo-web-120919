class GetRequester
    require 'net/http'
    require 'open-uri'
    require 'json'

    URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

    def initialize(url)
        @url = URL
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
    # we use the JSON library to parse the API response into nicely formatted JSON
        requests = JSON.parse(self.get_response_body)
        requests.collect do |request|
        request  
        end
    end

end