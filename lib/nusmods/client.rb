module NUSMods
  class Client

    include Defaults
    include Endpoints

    def initialize(opts = {})
      @base_url = "http://api.nusmods.com/"
    end

    private

    def connection
      Faraday.new(url: @base_url) do |f|
        f.response :json, :content_type => /\bjson$/
        f.use :instrumentation
        f.adapter Faraday.default_adapter
      end
    end

    def get(url)
      response = connection.get url
      response.body
    end

    # Converts a provided year to the API requirements
    def format_year(year)
      "#{year}-#{year+1}"
    end

  end
end
