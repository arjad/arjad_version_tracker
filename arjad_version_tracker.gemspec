require_relative "lib/arjad_version_tracker/version"

Gem::Specification.new do |spec|
  spec.name          = "arjad_version_tracker"
  spec.version       = ArjadVersionTracker::VERSION
  spec.authors       = ["arjad"]
  spec.email         = ["arjadgohar14@gmail.com"]
  spec.summary       = "Gem to get the last state of models in Rails applications."
  spec.description   = "Arjad Version Tracker is a Ruby gem designed to simplify manage version history of models in Rails applications. It provides a last versions of model records, allowing developers to implement versioning functionality with ease."
  spec.homepage      = "https://github.com/arjad/arjad_version_tracker"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = "https://github.com/arjad/arjad_version_tracker"
  spec.metadata["source_code_uri"] = "https://github.com/arjad/version_tracker"
  spec.metadata["changelog_uri"] = "https://github.com/arjad/version_tracker/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.files += Dir["lib/**/*.rb"]
  spec.files += Dir["lib/templates/**/*.rb"]
  
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
