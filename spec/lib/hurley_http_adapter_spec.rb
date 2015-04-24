require 'spec_helper'

describe RDF::Hurley::HttpAdapter do
  require 'rdf/spec/http_adapter'
  before do
    @http_adapter = RDF::Hurley::HttpAdapter
  end

  include RDF_HttpAdapter
end
