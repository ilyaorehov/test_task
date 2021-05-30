# -*- encoding: utf-8 -*-
# stub: roadie 4.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "roadie".freeze
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Magnus Bergmark".freeze]
  s.date = "2019-10-13"
  s.description = "Roadie tries to make sending HTML emails a little less painful by inlining stylesheets and rewriting relative URLs for you.".freeze
  s.email = ["magnus.bergmark@gmail.com".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "Changelog.md".freeze]
  s.files = ["Changelog.md".freeze, "README.md".freeze]
  s.homepage = "http://github.com/Mange/roadie".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Making HTML emails comfortable for the Ruby rockstars".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
    s.add_runtime_dependency(%q<css_parser>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rspec-collection_matchers>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 0.75.0"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
    s.add_dependency(%q<css_parser>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec-collection_matchers>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.75.0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
  end
end
