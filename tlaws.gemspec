# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tlaws/version"

Gem::Specification.new do |spec|
  spec.name          = "tlaws"
  spec.version       = Tlaws::VERSION
  spec.authors       = ["Yuri Valigursky"]
  spec.email         = ["yuri.valigursky@gmail.com"]

  spec.summary       = %q{A repository for TLAW-based thin API wrappers, for all the world}
  spec.description   = %q{A repository for TLAW-based thin API wrappers, for all the world}
  spec.homepage      = "https://github.com/molybdenum-99/tlaws"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "tlaw", "~> 0.0.2"
end
