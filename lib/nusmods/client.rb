require 'httparty'
require 'json'
require 'nusmods/endpoints'

module NUSMods
  class Client

    include Endpoints

    def initialize(opts = {})
      @base_url = "http://api.nusmods.com/"
    end

    private

    def get(url)
      response_body = HTTParty.get(@base_url + url).body
      JSON.parse(response_body)
    end

    # Converts a provided year to the API requirements
    def format_year(year)
      "#{year}-#{year+1}"
    end

  end
end
