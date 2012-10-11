# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "holidays"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Dunae", "Rowan Crawford"]
  s.date = "2011-09-02"
  s.description = "A collection of Ruby methods to deal with statutory and other holidays.  You deserve a holiday!"
  s.email = "code@dunae.ca"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["LICENSE", "README.rdoc"]
  s.homepage = "https://github.com/alexdunae/holidays"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "A collection of Ruby methods to deal with statutory and other holidays.  You deserve a holiday!"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
