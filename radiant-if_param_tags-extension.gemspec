# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-if_param_tags-extension"

Gem::Specification.new do |s|
  s.name        = "radiant-if_param_tags-extension"
  s.version     = RadiantIfParamTagsExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benny Degezelle"]
  s.email       = ["hi@monkeypatch.be"]
  s.homepage    = RadiantIfParamTagsExtension::URL
  s.summary     = RadiantIfParamTagsExtension::SUMMARY
  s.description = RadiantIfParamTagsExtension::DESCRIPTION
  
  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
end