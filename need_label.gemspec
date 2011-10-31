# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{need_label}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Yamamoto Kazuhisa}]
  s.date = %q{2011-10-31}
  s.description = %q{A class is outputted about an indispensable input item.}
  s.email = %q{ak.hisashi@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/need_label.rb",
    "lib/need_label/helpers.rb",
    "need_label.gemspec",
    "spec/fake_app.rb",
    "spec/requests/need_label_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/kazuhisa/need_label}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{output need-label}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.7"])
      s.add_development_dependency(%q<rspec>, ["~> 2.7.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.7.0"])
      s.add_development_dependency(%q<capybara>, ["~> 1.1.0"])
      s.add_development_dependency(%q<nokogiri>, ["~> 1.5.0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.7"])
      s.add_dependency(%q<rspec>, ["~> 2.7.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.7.0"])
      s.add_dependency(%q<capybara>, ["~> 1.1.0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.5.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.7"])
    s.add_dependency(%q<rspec>, ["~> 2.7.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.7.0"])
    s.add_dependency(%q<capybara>, ["~> 1.1.0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.5.0"])
  end
end

