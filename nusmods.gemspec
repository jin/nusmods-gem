$LOAD_PATH.unshift File.dirname(__FILE__)
require 'lib/nusmods/version'

Gem::Specification.new do |s|
  s.name        = 'nusmods'
  s.version     =  Nusmods::VERSION
  s.date        = '2014-05-16'
  s.summary     = "A ruby interface for NUSModsAPI." 
  s.description = "This rubygem aims to provide an easier way to fetch data from the NUSMods API, especially if you're building ruby apps."
  s.authors     = ["Jingwen Chen"]
  s.email       = 'jin@crypt.sg'
  s.files       = ["lib/nusmods.rb"]
  s.homepage    =
    'http://rubygems.org/gems/nusmods'
  s.license       = 'MIT'
end
