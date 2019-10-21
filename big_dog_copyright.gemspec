
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "big_dog_copyright/version"

Gem::Specification.new do |spec|
  spec.name          = "big_dog_copyright"
  spec.version       = BigDogCopyright::VERSION
  spec.authors       = ["Steve Hunter"]
  spec.email         = ["steve.hunter@bigdogconsultants.co.uk"]

  spec.summary       = %q{Inserts a name and msg in the view}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",  "~> 1.17"
  spec.add_development_dependency "rake",     "~> 10.0"
end
