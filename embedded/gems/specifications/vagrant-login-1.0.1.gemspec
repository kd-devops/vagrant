# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "vagrant-login"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mitchell Hashimoto"]
  s.date = "2014-03-11"
  s.description = "Provides login functionality to Vagrant Cloud."
  s.email = "biz@hashicorp.com"
  s.homepage = "http://www.vagrantup.com"
  s.require_paths = ["lib"]
  s.rubyforge_project = "vagrant-login"
  s.rubygems_version = "2.0.14"
  s.summary = "Provides login functionality to Vagrant Cloud"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rest-client>, ["~> 1.6.0"])
    else
      s.add_dependency(%q<rest-client>, ["~> 1.6.0"])
    end
  else
    s.add_dependency(%q<rest-client>, ["~> 1.6.0"])
  end
end
