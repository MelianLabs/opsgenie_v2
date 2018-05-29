=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module OpsgenieClient
  class TeamRoutingRuleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Change Team Routing Rule Order
    # Change the order of team routing rule with given id
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param body Request payload of change team routing rule order action
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; (default to id)
    # @return [SuccessResponse]
    def change_team_routing_rule_order(identifier, id, body, opts = {})
      data, _status_code, _headers = change_team_routing_rule_order_with_http_info(identifier, id, body, opts)
      return data
    end

    # Change Team Routing Rule Order
    # Change the order of team routing rule with given id
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param body Request payload of change team routing rule order action
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def change_team_routing_rule_order_with_http_info(identifier, id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamRoutingRuleApi.change_team_routing_rule_order ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling TeamRoutingRuleApi.change_team_routing_rule_order"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamRoutingRuleApi.change_team_routing_rule_order"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TeamRoutingRuleApi.change_team_routing_rule_order"
      end
      if @api_client.config.client_side_validation && opts[:'team_identifier_type'] && !['id', 'name'].include?(opts[:'team_identifier_type'])
        fail ArgumentError, 'invalid value for "team_identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = "/v2/teams/{identifier}/routing-rules/{id}/change-order".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'teamIdentifierType'] = opts[:'team_identifier_type'] if !opts[:'team_identifier_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamRoutingRuleApi#change_team_routing_rule_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Team Routing Rule
    # Creates a new team routing rule
    # @param identifier Identifier of the team
    # @param body Request payload of createTeamRoutingRule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; (default to id)
    # @return [SuccessResponse]
    def create_team_routing_rule(identifier, body, opts = {})
      data, _status_code, _headers = create_team_routing_rule_with_http_info(identifier, body, opts)
      return data
    end

    # Create Team Routing Rule
    # Creates a new team routing rule
    # @param identifier Identifier of the team
    # @param body Request payload of createTeamRoutingRule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def create_team_routing_rule_with_http_info(identifier, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamRoutingRuleApi.create_team_routing_rule ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling TeamRoutingRuleApi.create_team_routing_rule"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TeamRoutingRuleApi.create_team_routing_rule"
      end
      if @api_client.config.client_side_validation && opts[:'team_identifier_type'] && !['id', 'name'].include?(opts[:'team_identifier_type'])
        fail ArgumentError, 'invalid value for "team_identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = "/v2/teams/{identifier}/routing-rules".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'teamIdentifierType'] = opts[:'team_identifier_type'] if !opts[:'team_identifier_type'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['GenieKey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamRoutingRuleApi#create_team_routing_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Team Routing Rule
    # Delete team routing rule with given id
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; (default to id)
    # @return [SuccessResponse]
    def delete_team_routing_rule(identifier, id, opts = {})
      data, _status_code, _headers = delete_team_routing_rule_with_http_info(identifier, id, opts)
      return data
    end

    # Delete Team Routing Rule
    # Delete team routing rule with given id
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def delete_team_routing_rule_with_http_info(identifier, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamRoutingRuleApi.delete_team_routing_rule ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling TeamRoutingRuleApi.delete_team_routing_rule"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamRoutingRuleApi.delete_team_routing_rule"
      end
      if @api_client.config.client_side_validation && opts[:'team_identifier_type'] && !['id', 'name'].include?(opts[:'team_identifier_type'])
        fail ArgumentError, 'invalid value for "team_identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = "/v2/teams/{identifier}/routing-rules/{id}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'teamIdentifierType'] = opts[:'team_identifier_type'] if !opts[:'team_identifier_type'].nil?

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
        @api_client.config.logger.debug "API called: TeamRoutingRuleApi#delete_team_routing_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Team Routing Rule
    # Returns team routing rule with given id
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; (default to id)
    # @return [GetTeamRoutingRuleResponse]
    def get_team_routing_rule(identifier, id, opts = {})
      data, _status_code, _headers = get_team_routing_rule_with_http_info(identifier, id, opts)
      return data
    end

    # Get Team Routing Rule
    # Returns team routing rule with given id
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
    # @return [Array<(GetTeamRoutingRuleResponse, Fixnum, Hash)>] GetTeamRoutingRuleResponse data, response status code and response headers
    def get_team_routing_rule_with_http_info(identifier, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamRoutingRuleApi.get_team_routing_rule ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling TeamRoutingRuleApi.get_team_routing_rule"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamRoutingRuleApi.get_team_routing_rule"
      end
      if @api_client.config.client_side_validation && opts[:'team_identifier_type'] && !['id', 'name'].include?(opts[:'team_identifier_type'])
        fail ArgumentError, 'invalid value for "team_identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = "/v2/teams/{identifier}/routing-rules/{id}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'teamIdentifierType'] = opts[:'team_identifier_type'] if !opts[:'team_identifier_type'].nil?

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
        :return_type => 'GetTeamRoutingRuleResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamRoutingRuleApi#get_team_routing_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Team Routing Rules
    # Returns list of team routing rules
    # @param identifier Identifier of the team
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; (default to id)
    # @return [ListTeamRoutingRulesResponse]
    def list_team_routing_rules(identifier, opts = {})
      data, _status_code, _headers = list_team_routing_rules_with_http_info(identifier, opts)
      return data
    end

    # List Team Routing Rules
    # Returns list of team routing rules
    # @param identifier Identifier of the team
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
    # @return [Array<(ListTeamRoutingRulesResponse, Fixnum, Hash)>] ListTeamRoutingRulesResponse data, response status code and response headers
    def list_team_routing_rules_with_http_info(identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamRoutingRuleApi.list_team_routing_rules ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling TeamRoutingRuleApi.list_team_routing_rules"
      end
      if @api_client.config.client_side_validation && opts[:'team_identifier_type'] && !['id', 'name'].include?(opts[:'team_identifier_type'])
        fail ArgumentError, 'invalid value for "team_identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = "/v2/teams/{identifier}/routing-rules".sub('{' + 'identifier' + '}', identifier.to_s)

      # query parameters
      query_params = {}
      query_params[:'teamIdentifierType'] = opts[:'team_identifier_type'] if !opts[:'team_identifier_type'].nil?

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
        :return_type => 'ListTeamRoutingRulesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamRoutingRuleApi#list_team_routing_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Team Routing Rule (Partial)
    # Update routing rule of the team
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; (default to id)
    # @option opts [UpdateTeamRoutingRulePayload] :body Request payload of update Team Routing Rule action
    # @return [SuccessResponse]
    def update_team_routing_rule(identifier, id, opts = {})
      data, _status_code, _headers = update_team_routing_rule_with_http_info(identifier, id, opts)
      return data
    end

    # Update Team Routing Rule (Partial)
    # Update routing rule of the team
    # @param identifier Identifier of the team
    # @param id Id of the team routing rule
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
    # @option opts [UpdateTeamRoutingRulePayload] :body Request payload of update Team Routing Rule action
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def update_team_routing_rule_with_http_info(identifier, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamRoutingRuleApi.update_team_routing_rule ..."
      end
      # verify the required parameter 'identifier' is set
      if @api_client.config.client_side_validation && identifier.nil?
        fail ArgumentError, "Missing the required parameter 'identifier' when calling TeamRoutingRuleApi.update_team_routing_rule"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamRoutingRuleApi.update_team_routing_rule"
      end
      if @api_client.config.client_side_validation && opts[:'team_identifier_type'] && !['id', 'name'].include?(opts[:'team_identifier_type'])
        fail ArgumentError, 'invalid value for "team_identifier_type", must be one of id, name'
      end
      # resource path
      local_var_path = "/v2/teams/{identifier}/routing-rules/{id}".sub('{' + 'identifier' + '}', identifier.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'teamIdentifierType'] = opts[:'team_identifier_type'] if !opts[:'team_identifier_type'].nil?

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
        @api_client.config.logger.debug "API called: TeamRoutingRuleApi#update_team_routing_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
