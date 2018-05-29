=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module OpsgenieClient
  class ContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Contact
    # Creates a new contact
    # @param identifier Identifier of the user to be searched
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactPayload] :body Request payload of creating contact action
    # @return [SuccessResponse]
    def create_contact(identifier, opts = {})
      data, _status_code, _headers = create_contact_with_http_info(identifier, opts)
      return data
    end

    # Create Contact
    # Creates a new contact
    # @param identifier Identifier of the user to be searched
    # @param [Hash] opts the optional parameters
    # @option opts [CreateContactPayload] :body Request payload of creating contact action
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def create_contact_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactApi.create_contact ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.create_contact"
      end
      # resource path
      local_var_path = "/v2/users/{identifier}/contacts".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Contact
    # Delete contact using contact id
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def delete_contact(identifier, contact_id, opts = {})
      data, _status_code, _headers = delete_contact_with_http_info(identifier, contact_id, opts)
      return data
    end

    # Delete Contact
    # Delete contact using contact id
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def delete_contact_with_http_info(identifier, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactApi.delete_contact ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.delete_contact"
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.delete_contact"
      end
      # resource path
      local_var_path = "/v2/users/{identifier}/contacts/{contactId}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'contactId' + '}', contact_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable Contact
    # Disable the contact of the user
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def disable_contact(identifier, contact_id, opts = {})
      data, _status_code, _headers = disable_contact_with_http_info(identifier, contact_id, opts)
      return data
    end

    # Disable Contact
    # Disable the contact of the user
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def disable_contact_with_http_info(identifier, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactApi.disable_contact ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.disable_contact"
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.disable_contact"
      end
      # resource path
      local_var_path = "/v2/users/{identifier}/contacts/{contactId}/disable".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'contactId' + '}', contact_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#disable_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable Contact
    # Enable the contact of the user
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def enable_contact(identifier, contact_id, opts = {})
      data, _status_code, _headers = enable_contact_with_http_info(identifier, contact_id, opts)
      return data
    end

    # Enable Contact
    # Enable the contact of the user
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def enable_contact_with_http_info(identifier, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactApi.enable_contact ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.enable_contact"
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.enable_contact"
      end
      # resource path
      local_var_path = "/v2/users/{identifier}/contacts/{contactId}/enable".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'contactId' + '}', contact_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#enable_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Contact
    # Returns contact with given id
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [GetContactResponse]
    def get_contact(identifier, contact_id, opts = {})
      data, _status_code, _headers = get_contact_with_http_info(identifier, contact_id, opts)
      return data
    end

    # Get Contact
    # Returns contact with given id
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactResponse, Fixnum, Hash)>] GetContactResponse data, response status code and response headers
    def get_contact_with_http_info(identifier, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactApi.get_contact ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.get_contact"
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.get_contact"
      end
      # resource path
      local_var_path = "/v2/users/{identifier}/contacts/{contactId}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'contactId' + '}', contact_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetContactResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Contacts
    # Returns list of contacts
    # @param identifier Identifier of the user to be searched
    # @param [Hash] opts the optional parameters
    # @return [ListContactsResponse]
    def list_contacts(identifier, opts = {})
      data, _status_code, _headers = list_contacts_with_http_info(identifier, opts)
      return data
    end

    # List Contacts
    # Returns list of contacts
    # @param identifier Identifier of the user to be searched
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListContactsResponse, Fixnum, Hash)>] ListContactsResponse data, response status code and response headers
    def list_contacts_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactApi.list_contacts ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.list_contacts"
      end
      # resource path
      local_var_path = "/v2/users/{identifier}/contacts".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListContactsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#list_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Contact (Partial)
    # Update contact of the user
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateContactPayload] :body Request payload of update contact action
    # @return [SuccessResponse]
    def update_contact(identifier, contact_id, opts = {})
      data, _status_code, _headers = update_contact_with_http_info(identifier, contact_id, opts)
      return data
    end

    # Update Contact (Partial)
    # Update contact of the user
    # @param identifier Identifier of the user to be searched
    # @param contact_id Id of the contact
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateContactPayload] :body Request payload of update contact action
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def update_contact_with_http_info(identifier, contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactApi.update_contact ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling ContactApi.update_contact"
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.update_contact"
      end
      # resource path
      local_var_path = "/v2/users/{identifier}/contacts/{contactId}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'contactId' + '}', contact_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#update_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
