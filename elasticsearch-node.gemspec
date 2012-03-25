# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "elasticsearch-node/version"

Gem::Specification.new do |s|
  s.name        = "elsearch-node"
  s.version     = Elsearch::Node::VERSION
  s.authors     = ["Florian Gilcher"]
  s.email       = ["florian.gilcher@asquera.de"]
  s.homepage    = "http://github.com/Asquera/elasticsearch-node"
  s.summary     = %q{Helper gem to install and start an elasticsearch node}
  s.description = %q{Helper gem to install and start an elasticsearch node}

  s.rubyforge_project = "elasticsearch-node"

  s.files         = (
                      `git ls-files`.split("\n") + 
                      Dir["elasticsearch/{bin,config,lib,README.textile,NOTICE.txt,LICENSE.txt}"]
                    ).uniq
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "riot"
  s.add_development_dependency "faraday"
end