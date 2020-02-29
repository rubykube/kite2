
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kite/version"

Gem::Specification.new do |spec|
  spec.name          = "kite"
  spec.version       = Kite::VERSION
  spec.authors       = ["Openware"]
  spec.email         = ["hello@openware.com"]

  spec.summary       = %q{DevOps swiss army knife}
  spec.description   = %q{Kite is a DevOps on Rails framework focusing on CLI and background tasks}
  spec.homepage      = "http://www.openware.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/rubykube/kite"
    spec.metadata["changelog_uri"] = "https://github.com/rubykube/kite/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "gli", "~> 2.18"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rdoc", "~> 6.1"
  spec.add_development_dependency "aruba", "~> 0.14"
  spec.add_development_dependency "pry", "~> 0.12.2"
end
