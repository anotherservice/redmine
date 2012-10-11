# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "open-uri-cached"
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Danial Pearce"]
  s.date = "2012-01-07"
  s.description = "OpenURI with transparent disk caching"
  s.email = "rubygems@tigris.id.au"
  s.homepage = "http://github.com/tigris/open-uri-cached"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Do a lot of site scraping but take lots of attempts at parsing the content before reaching your end result? This gem is for you. But wait, there's more... Ok, no there isn't."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
