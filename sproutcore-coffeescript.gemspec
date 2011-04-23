# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sproutcore-coffeescript/version"

Gem::Specification.new do |s|
  s.name        = "sproutcore-coffeescript"
  s.version     = Sproutcore::Coffeescript::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Vladimír Bobeš Tužinský"]
  s.email       = ["vladimir.tuzinsky@gmail.com"]
  s.homepage    = "https://github.com/bobes/sproutcore-coffeescript"
  s.summary     = %q{SproutCore + CoffeeScript in love}
  s.description = %q{Adds support for CoffeeScript to SproutCore}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("sproutcore")
  s.add_dependency("coffee-script")
end
