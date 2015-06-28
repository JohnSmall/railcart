# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'railcart/version'

Gem::Specification.new do |spec|
  spec.name          = "railcart"
  spec.version       = Railcart::Rails::VERSION
  spec.authors     = ["John-Small"]
  spec.email       = ["jds340+rubygems@gmail.com"]
  spec.homepage    = "http://mindoro-marine.co.uk/code/railcart"
  spec.summary     = "Coffescript shopping cart"
  spec.description = "This is a shopping cart extracted into a gem so I can use it in different projects. Use at your own risk"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'https://rubygems.org'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "rails", "~> 4.2"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'konacha'
end
