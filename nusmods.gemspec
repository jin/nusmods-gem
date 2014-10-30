lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nusmods/version'

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

  s.files = `git ls-files -z`.split("\x0")
  s.require_paths = %w( lib )
  s.add_dependency 'faraday'
  s.add_dependency 'faraday_middleware'
  s.add_dependency 'activesupport'
end
