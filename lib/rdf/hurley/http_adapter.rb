module RDF; module Hurley
  ##
  # Use Hurley for retrieving resources
  class HttpAdapter < RDF::Util::File::HttpAdapter
    require 'hurley'

    class <<self
      ##
      # Set the Hurley::Client to use for retrieving RDF resources
      attr_writer :client

      ##
      # Get the Hurley::Client to use for retrieving RDF resources,
      # or a default connect that follows redirects.
      def client
        @client ||= ::Hurley::Client.new
      end
    end

    # @see HttpAdapter.open_url
    # @param [String] base_uri to open
    # @param  [Hash{Symbol => Object}] options
    # @return [RemoteDocument, Object] A {RemoteDocument}.
    def self.open_url(base_uri, options)
      response = client.get(base_uri) do |req|
        headers(options).each do |k, v|
          req.header[k] = v
        end
      end

      if response.success?
        # found object

        # If a Location is returned, it defines the base resource for this file, not it's actual ending location
        document_options = {
          base_uri:     RDF::URI((response.location || response.request).url.to_s),
          charset:      Encoding::UTF_8,
          code:         response.status_code,
          headers:      response.header
        }

        RDF::Util::File::RemoteDocument.new(response.body, document_options)
      else
        raise IOError, "<#{base_uri}>: #{response.status_code}"
      end
    end
  end
end; end # RDF::Hurley