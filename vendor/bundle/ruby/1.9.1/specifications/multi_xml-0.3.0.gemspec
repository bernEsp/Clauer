# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "multi_xml"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Erik Michaels-Ober"]
  s.date = "2011-08-08"
  s.description = "A gem to provide swappable XML backends utilizing LibXML, Nokogiri, or REXML."
  s.email = "sferik@gmail.com"
  s.homepage = "https://github.com/sferik/multi_xml"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "A generic swappable back-end for XML parsing"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<ZenTest>, ["~> 4.5"])
      s.add_development_dependency(%q<maruku>, ["~> 0.6"])
      s.add_development_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.4"])
      s.add_development_dependency(%q<yard>, ["~> 0.7"])
    else
      s.add_dependency(%q<ZenTest>, ["~> 4.5"])
      s.add_dependency(%q<maruku>, ["~> 0.6"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<simplecov>, ["~> 0.4"])
      s.add_dependency(%q<yard>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<ZenTest>, ["~> 4.5"])
    s.add_dependency(%q<maruku>, ["~> 0.6"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<simplecov>, ["~> 0.4"])
    s.add_dependency(%q<yard>, ["~> 0.7"])
  end
end
