require_relative "lib/tomo/plugin/slack/version"

Gem::Specification.new do |spec|
  spec.name = "tomo-plugin-slack"
  spec.version = Tomo::Plugin::Slack::VERSION
  spec.authors = ["Jindrich Skupa"]
  spec.email = ["jindrich.skupa@gmail.com"]

  spec.summary = "Slack notifications for tomo"
  spec.homepage = "https://github.com/jindrichskupa/tomo-plugin-slack"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/jindrichskupa/tomo-plugin-slack/issues",
    "changelog_uri" => "https://github.com/jindrichskupa/tomo-plugin-slack/releases",
    "source_code_uri" => "https://github.com/jindrichskupa/tomo-plugin-slack",
    "homepage_uri" => spec.homepage
  }

  # Specify which files should be added to the gem when it is released.
  spec.files = `git ls-files -z exe lib LICENSE.txt README.md`.split("\x0")
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "tomo", "~> 1.0"
end
