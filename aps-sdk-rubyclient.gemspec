# frozen_string_literal: true

require_relative "lib/aps/sdk/rubyclient/version"

Gem::Specification.new do |spec|
  spec.name = "aps-sdk-rubyclient"
  spec.version = Aps::Sdk::Rubyclient::VERSION
  spec.authors = ["Ben Koshy"]
  spec.email = ["ben.chenathara@gmail.com"]

  spec.summary = "APS Ruby SDK"
  spec.description = "Unofficial SDK to interface with Autodesk Platform Services (APS) APIs"
  spec.homepage = "https://github.com/benkoshy/aps-sdk-rubyclient"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/benkoshy/aps-sdk-rubyclient"
  spec.metadata["changelog_uri"] = "https://github.com/benkoshy/aps-sdk-rubyclient/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency  'minitest'
  spec.add_dependency  'minitest-reporters'      
  spec.add_dependency  'rubocop'
  spec.add_dependency  'rubocop-minitest'
  spec.add_dependency  'rubocop-packaging'
  spec.add_dependency  'rubocop-performance'
  spec.add_dependency  'rubocop-rake'
  spec.add_dependency  'simplecov'
  spec.add_dependency  'rest-client', '~> 2.1.0'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
