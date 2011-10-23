# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "google_scholar/version"

Gem::Specification.new do |s|
  s.name        = "google_scholar"
  s.version     = GoogleScholar::VERSION
  s.authors     = ["Antonio Tapiador del Dujo"]
  s.email       = ["atapiador@dit.upm.es"]
  s.homepage    = ""
  s.summary     = %q{A web-scraping API to Google Scholar}
  s.description = %q{A web-scraping API to Google Scholar}

  s.rubyforge_project = "google_scholar"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"

  s.add_runtime_dependency "nokogiri", "~> 1.5.0"
  s.add_runtime_dependency "activesupport", "> 3.0.0"
end
