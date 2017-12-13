
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wtf_api/version"

Gem::Specification.new do |spec|
  spec.name          = "wtf_api"
  spec.version       = WtfApi::VERSION
  spec.authors       = ["Steve Huff"]
  spec.email         = ["shuff@vecna.org"]

  spec.summary       = %q{REST API around bsd_wtf gem}
  spec.description   = %q{This, this is wrong tool.  Very bad.  Never use this.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "grape", "~> 1"
  spec.add_dependency "bsd_wtf", "~> 0.1"
end
