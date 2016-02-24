# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "rack-tcop"
  spec.version       = "0.1.0"
  spec.authors       = ["Kelly Sutton"]
  spec.email         = ["michael.k.sutton@gmail.com"]

  spec.summary       = %q{Some Rack middleware to raise errors when you have malformed HTML}
  spec.homepage      = "https://github.com/kellysutton/rack-tcop"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nokogiri", ">= 1.2.0"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
