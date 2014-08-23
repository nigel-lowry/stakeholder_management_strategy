# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stakeholder_management_strategy/version'

Gem::Specification.new do |spec|
  spec.name          = "stakeholder_management_strategy"
  spec.version       = StakeholderManagementStrategy::VERSION
  spec.authors       = ["Nigel Lowry"]
  spec.email         = ["nigel-lowry@ultra.eclipse.co.uk"]
  spec.summary       = %q{Small gem to tell you what stakeholder management strategy to use given a stakeholder's power/influence and interest.}
  spec.description   = %q{Implements the power/interest grid as laid out within the BCS ISEB International Diploma in Business Analysis syllabus.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
