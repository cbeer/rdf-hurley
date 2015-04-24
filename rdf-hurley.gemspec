#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |spec|
  spec.name          = "rdf-hurley"
  spec.version       = File.read('VERSION').chomp
  spec.date          = File.mtime('VERSION').strftime('%Y-%m-%d')

  spec.authors       = ["Chris Beer"]
  spec.email         = 'public-rdf-ruby@w3.org'

  spec.summary       = %q{Hurley HTTP adapter for RDF.rb}
  spec.homepage      = "http://ruby-rdf.github.com/rdf-hurley/"

  spec.files         = %w(AUTHORS README.md UNLICENSE VERSION) + Dir.glob('lib/**/*.rb') + Dir.glob('spec/*.rb')
  spec.bindir        = "exe"
  spec.executables   = %w()
  spec.require_paths = ["lib"]

  spec.required_ruby_version      = '>= 1.9.3'

  spec.add_runtime_dependency 'hurley'
  spec.add_runtime_dependency 'rdf',         '~> 1.1', '>= 1.1.7'

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rdf-spec'
  spec.add_development_dependency 'rspec'
end
