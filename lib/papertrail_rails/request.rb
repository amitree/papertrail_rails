require 'httparty'

module PapertrailRails
  class Request
    @@headers = {}
    @base_uri = "https://papertrailapp.com/api/v1"

    include HTTParty

    def self.get(path, query)
      response = HTTParty.get(append_query_string_to_url(path, query), @@headers)
      check_code(response.code)
      response.parsed_response
    end

    def self.append_query_string_to_url(path, query)
      @base_uri + path + query
    end

    def self.set_default_headers(api_key)
      @@headers = { headers: { 'X-Papertrail-Token' => api_key } } if @@headers.empty?
    end

    def self.check_code(code)
      case code
      when 401
        raise AuthenticationError.new('Api key is missing or invalid')
      end
    end

    class AuthenticationError < StandardError
    end
  end
end
