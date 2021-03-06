# Hurley HTTP Adapter for RDF.rb

[![Gem Version](https://badge.fury.io/rb/rdf-hurley.png)](http://badge.fury.io/rb/rdf-hurley)
[![Build Status](https://secure.travis-ci.org/cbeer/rdf-hurley.png?branch=master)](http://travis-ci.org/cbeer/rdf-hurley)

## Features

RDF::Hurley provides a Hurley HTTP adapter for RDF::Util::File to fetch remote resources using a Hurley client.

Install with `gem install rdf-hurley`

## Examples

    require 'rubygems'
    require 'rdf/hurley'

### Using the default settings

    RDF::Util::File.http_adapter = RDF::Hurley::HttpAdapter

## Documentation
Full documentation available on [RubyDoc](http://rubydoc.info/gems/rdf-hurley/file/README.md)

### Principal Classes
* {RDF::Hurley}
  * {RDF::Hurley::HttpAdapter}

## Dependencies
* [Ruby](http://ruby-lang.org/) (>= 1.9.3)
* [RDF.rb](http://rubygems.org/gems/rdf) (>= 1.0)
* [Hurley](https://rubygems.org/gems/hurley)

## Installation
The recommended installation method is via [RubyGems](http://rubygems.org/).
To install the latest official release of the `RDF::Hurley` gem, do:

    % [sudo] gem install rdf-hurley

## Mailing List
* <http://lists.w3.org/Archives/Public/public-rdf-ruby/>

## Author
* [Chris Beer](http://github.com/cbeer)

## Contributing
* Do your best to adhere to the existing coding conventions and idioms.
* Don't use hard tabs, and don't leave trailing whitespace on any line.
* Do document every method you add using [YARD][] annotations. Read the
  [tutorial][YARD-GS] or just look at the existing code for examples.
* Don't touch the `rdf-hurley.gemspec`, `VERSION` or `AUTHORS` files. If you need to change them, do so on your private branch only.
* Do feel free to add yourself to the `CREDITS` file and the corresponding list in the the `README`. Alphabetical order applies.
* Do note that in order for us to merge any non-trivial changes (as a rule of thumb, additions larger than about 15 lines of code), we need an explicit [public domain dedication][PDD] on record from you.

License
-------

This is free and unencumbered public domain software. For more information,
see <http://unlicense.org/> or the accompanying {file:UNLICENSE} file.

[Ruby]:             http://ruby-lang.org/
[YARD]:             http://yardoc.org/
[YARD-GS]:          http://rubydoc.info/docs/yard/file/docs/GettingStarted.md
[PDD]:              http://lists.w3.org/Archives/Public/public-rdf-ruby/2010May/0013.html
[RDF.rb]:           http://rubygems.org/gems/rdf