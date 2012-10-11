# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "system_timer"
  s.version = "1.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philippe Hanrigou", "David Vollbracht"]
  s.autorequire = "system_timer"
  s.date = "2011-06-11"
  s.extensions = ["ext/system_timer/extconf.rb"]
  s.extra_rdoc_files = ["README"]
  s.files = ["README", "ext/system_timer/extconf.rb"]
  s.rdoc_options = ["--title", "System Timer", "--main", "README", "--line-numbers"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "systemtimer"
  s.rubygems_version = "1.8.15"
  s.summary = "Set a Timeout based on signals, which are more reliable than Timeout. Timeout is based on green threads."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
