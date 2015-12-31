lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/ruby_ng/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-ruby_ng"
  spec.version       = Itamae::Plugin::Recipe::RubyNg::VERSION
  spec.authors       = ["Hiroyuki MORITA"]
  spec.email         = ["chiastolite.1980@gmail.com"]

  spec.summary       = %q{Itamae plugin to install ruby from brightbox/ruby-ng}
  spec.description   = %q{Itamae plugin to install ruby from brightbox/ruby-ng}
  spec.homepage      = "https://github.com/chiastolite/itamae-plugin-recipe-ruby_ng"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae", "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
