require "uri"

module SwaggerClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Sample
    # Returns an object with two boolean values, one evaluated to true and the other to false.
    # @param sample_id 
    # @param [Hash] opts the optional parameters
    # @return [SampleObject]
    def sample_id_get(sample_id, opts = {})
      data, status_code, headers = sample_id_get_with_http_info(sample_id, opts)
      return data
    end

    # Sample
    # Returns an object with two boolean values, one evaluated to true and the other to false.
    # @param sample_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SampleObject, Fixnum, Hash)>] SampleObject data, response status code and response headers
    def sample_id_get_with_http_info(sample_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi#sample_id_get ..."
      end
      
      # verify the required parameter 'sample_id' is set
      fail "Missing the required parameter 'sample_id' when calling sample_id_get" if sample_id.nil?
      
      # resource path
      path = "/{sampleID}".sub('{format}','json').sub('{' + 'sampleID' + '}', sample_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SampleObject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#sample_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




