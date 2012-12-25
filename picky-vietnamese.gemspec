# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'picky-vietnamese/version'

Gem::Specification.new do |gem|
  gem.name          = "picky-vietnamese"
  gem.version       = Picky::Vietnamese::VERSION
  gem.authors       = ["Le Duc Duy"]
  gem.email         = ["me@duy.kr"]
  gem.description   = "Vietnamese substituter for Picky search engine"
  gem.summary       = "Vietnamese substituter for Picky search engine"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'picky'
end
