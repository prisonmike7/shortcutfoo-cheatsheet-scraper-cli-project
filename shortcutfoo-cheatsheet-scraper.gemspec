require_relative 'lib/shortcutfoo/version'

Gem::Specification.new do |spec|
  spec.name          = "shortcutfoo-cheatsheet-scraper"
  spec.version       = Shortcutfoo::Cheatsheet::Scraper::VERSION
  spec.authors       = ["prisonmike7"]
  spec.email         = ["mwharris7@gmail.com"]

  spec.summary       = %q{Application keyboard shortcuts & programming method reference from through a command line interface}
  spec.description   = %q{ShortcutFoo Cheatsheet Webscraper}
  spec.homepage      = "https://github.com/prisonmike7"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/prisonmike7/shortcutfoo-cheatsheet-scraper-cli-project"
  spec.metadata["changelog_uri"] = "https://github.com/prisonmike7/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
