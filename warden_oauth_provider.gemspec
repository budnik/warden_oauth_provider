# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "warden_oauth_provider/version"

Gem::Specification.new do |s|
  s.name        = "warden_oauth_provider"
  s.version     = WardenOauthProvider::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Edwin Vlieg", "Berend van Bruijnsvoort"]
  s.email       = ["info@moneybird.com"]
  s.homepage    = "https://github.com/bluetools/warden_oauth_provider"
  s.summary     = %q{Warden strategy for OAuth provider}
  s.description = %q{Warden strategy for OAuth provider}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency              'warden',         '>= 1.0.0'
  s.add_dependency              'oauth',          '~> 0.4.0'
  s.add_dependency              'activerecord',   '>= 3.0.0'
  s.add_development_dependency  'rspec',          '~> 2.0'
  s.add_development_dependency  'rake'
  s.add_development_dependency  'sqlite3',        '~> 1.3.5'
  s.add_development_dependency  'factory_girl',   '~> 1.3.0'
end
