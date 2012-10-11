# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fcgi"
  s.version = "0.8.8"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.autorequire = "fcgi"
  s.cert_chain = nil
  s.date = "2009-11-13"
  s.description = "FastCGI is a language independent, scalable, open extension to CGI that provides high performance without the limitations of server specific APIs. For more information, see http://www.fastcgi.com/."
  s.extensions = ["ext/fcgi/extconf.rb"]
  s.files = ["ext/fcgi/extconf.rb"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = "fcgi"
  s.rubygems_version = "1.8.15"
  s.summary = "FastCGI library for Ruby."

  if s.respond_to? :specification_version then
    s.specification_version = 1

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
