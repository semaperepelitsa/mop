# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mop/version"

Gem::Specification.new do |s|
  s.name        = "mop"
  s.version     = Mop::VERSION
  s.authors     = ["Semyon Perepelitsa"]
  s.email       = ["sema@sema.in"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "turn"
  s.add_development_dependency "minitest"
  s.add_development_dependency "activesupport"
  # s.add_runtime_dependency "rest-client"
end
