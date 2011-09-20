# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-if_params_tags-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-if_params_tags-extension"
  s.version     = RadiantIfParamsTagsExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benny Degezelle"]
  s.email       = ["hi@monkeypatch.be"]
  s.homepage    = "http://github.com/jomz/radiant-if_params_tags-extension"
  s.summary     = %q{If Params Tags for Radiant CMS}
  s.description = %q{Makes Radiant better by adding if_params_tags!}
  
  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
  
  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem 'radiant-if_params_tags-extension', :version => '~>#{RadiantIfParamsTagsExtension::VERSION}'
  }
end