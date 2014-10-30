$LOAD_PATH.unshift File.dirname(__FILE__)
require 'lib/nusmods/version'

Gem::Specification.new do |s|
  s.name        = 'nusmods'
  s.version     = NUSMods::VERSION
  s.date        = Date.today.to_s
  s.summary     = "A ruby wrapper interface for NUSModsAPI."
  s.description = s.summary
  s.authors     = ["Jingwen Chen"]
  s.email       = 'jin@crypt.sg'
  s.files       = ["lib/nusmods.rb"]
  s.homepage    =
    'http://rubygems.org/gems/nusmods'
  s.license       = 'MIT'
end
