# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rspec_clickable_output/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tadas Tamosauskas"]
  gem.email         = ["tadas@pdfcv.com"]
  gem.description   = %q{Enables to click-open RSpec failure backtrace lines}
  gem.summary       = %q{Clickable RSpec output.}
  gem.homepage      = ""

  gem.add_dependency 'rspec-core', '~> 2.11.1'
  gem.add_development_dependency 'rspec'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rspec_clickable_output"
  gem.require_paths = ["lib"]
  gem.version       = RspecClickableOutput::VERSION
end
