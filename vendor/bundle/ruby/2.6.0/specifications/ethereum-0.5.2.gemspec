# -*- encoding: utf-8 -*-
# stub: ethereum 0.5.2 ruby lib bin

Gem::Specification.new do |s|
  s.name = "ethereum".freeze
  s.version = "0.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze, "bin".freeze]
  s.authors = ["DigixGlobal Pte Ltd (https://dgx.io)".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-05-06"
  s.description = "Ethereum libraries for ruby programming language.".freeze
  s.email = ["ace@dgx.io".freeze]
  s.homepage = "https://github.com/DigixGlobal/ethereum-ruby".freeze
  s.licenses = ["GPL".freeze]
  s.rubygems_version = "3.0.1".freeze
  s.summary = "Ethereum libraries for Ruby".freeze

  s.installed_by_version = "3.0.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sha3-pure-ruby>.freeze, ["= 0.1.1"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<activesupport>.freeze, [">= 0"])
      s.add_dependency(%q<sha3-pure-ruby>.freeze, ["= 0.1.1"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<sha3-pure-ruby>.freeze, ["= 0.1.1"])
  end
end
