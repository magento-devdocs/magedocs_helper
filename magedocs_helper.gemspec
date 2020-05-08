require_relative 'lib/magedocs_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "magedocs_helper"
  spec.version       = MagedocsHelper::VERSION
  spec.authors       = ["Dima Shevtsov"]
  spec.email         = ["shevtsov@adobe.com"]

  spec.summary       = %q{rake tasks for Magento docs}
  spec.description   = %q{Helper tooling such as rake commands for Magento documentation projects.}
  spec.homepage      = 'https://github.com/magento-devdocs/magedocs_helper'
  spec.license       = "OSL"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/magento-devdocs/magedocs_helper'
  spec.metadata["changelog_uri"] = 'https://github.com/magento-devdocs/magedocs_helper/CHANGELOG.md'

  spec.add_dependency 'colorator'
  spec.add_dependency 'html-proofer'
  spec.add_dependency 'image_optim'
  spec.add_dependency 'image_optim_pack'
  spec.add_dependency 'kramdown'
  spec.add_dependency 'launchy'
  spec.add_dependency 'mdl', '= 0.7.0'
  spec.add_dependency 'rake'
  spec.add_dependency 'whatsup_github'


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
