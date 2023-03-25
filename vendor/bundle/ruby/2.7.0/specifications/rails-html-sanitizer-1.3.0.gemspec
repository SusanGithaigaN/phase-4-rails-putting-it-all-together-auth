# -*- encoding: utf-8 -*-
# stub: rails-html-sanitizer 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-html-sanitizer".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Rafael Mendon\u00E7a Fran\u00E7a".freeze, "Kasper Timm Hansen".freeze]
  s.date = "2019-10-06"
  s.description = "HTML sanitization for Rails applications".freeze
  s.email = ["rafaelmfranca@gmail.com".freeze, "kaspth@gmail.com".freeze]
  s.homepage = "https://github.com/rails/rails-html-sanitizer".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.6".freeze
  s.summary = "This gem is responsible to sanitize HTML fragments in Rails applications.".freeze

  s.installed_by_version = "3.4.6" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<loofah>.freeze, ["~> 2.3"])
  s.add_development_dependency(%q<bundler>.freeze, [">= 1.3"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
  s.add_development_dependency(%q<rails-dom-testing>.freeze, [">= 0"])
end
