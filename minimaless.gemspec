# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "minimaless"
  spec.version       = "0.0.11"
  spec.authors       = ["brettinternet"]

  spec.summary       = %q{Like Jekyll's minima theme, but less.}
  spec.homepage      = "https://github.com/brettinternet/minimaless"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.3"
  spec.add_development_dependency "bundler", "~> 1.12"
end
