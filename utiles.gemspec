# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "utiles/version"

Gem::Specification.new do |s|
  s.name        = "utiles"
  s.version     = Utiles::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Wojciech Todryk"]
  s.email       = ["wojciech@todryk.pl"]
  s.homepage    = "http://todryk.pl/hard-soft/utiles"
  s.summary     = %q{Utiles}
  s.description = %q{Extends standard classes}

  s.rubyforge_project = "utiles"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency "rake", [">= 0"]
  s.add_development_dependency "rspec", [">= 0"]
  s.add_development_dependency "guard", [">= 0"]
  s.add_development_dependency "guard-rspec", [">= 0"]
end
