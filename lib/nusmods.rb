require 'faraday'
require 'faraday_middleware'
require 'nusmods/client'

directory = File.expand_path(File.dirname(__FILE__))

module NUSMods 
  class << self

    ## configure default
    def configure
      yield self
    end

  end
end
