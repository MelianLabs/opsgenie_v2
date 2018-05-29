=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieClient::TeamRoutingRuleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TeamRoutingRuleApi' do
  before do
    # run before each test
    @instance = OpsgenieClient::TeamRoutingRuleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamRoutingRuleApi' do
    it 'should create an instance of TeamRoutingRuleApi' do
      expect(@instance).to be_instance_of(OpsgenieClient::TeamRoutingRuleApi)
    end
  end

  # unit tests for change_team_routing_rule_order
  # Change Team Routing Rule Order
  # Change the order of team routing rule with given id
  # @param identifier Identifier of the team
  # @param id Id of the team routing rule
  # @param body Request payload of change team routing rule order action
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @return [SuccessResponse]
  describe 'change_team_routing_rule_order test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_team_routing_rule
  # Create Team Routing Rule
  # Creates a new team routing rule
  # @param identifier Identifier of the team
  # @param body Request payload of createTeamRoutingRule
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @return [SuccessResponse]
  describe 'create_team_routing_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_team_routing_rule
  # Delete Team Routing Rule
  # Delete team routing rule with given id
  # @param identifier Identifier of the team
  # @param id Id of the team routing rule
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @return [SuccessResponse]
  describe 'delete_team_routing_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_team_routing_rule
  # Get Team Routing Rule
  # Returns team routing rule with given id
  # @param identifier Identifier of the team
  # @param id Id of the team routing rule
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @return [GetTeamRoutingRuleResponse]
  describe 'get_team_routing_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_team_routing_rules
  # List Team Routing Rules
  # Returns list of team routing rules
  # @param identifier Identifier of the team
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @return [ListTeamRoutingRulesResponse]
  describe 'list_team_routing_rules test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_team_routing_rule
  # Update Team Routing Rule (Partial)
  # Update routing rule of the team
  # @param identifier Identifier of the team
  # @param id Id of the team routing rule
  # @param [Hash] opts the optional parameters
  # @option opts [String] :team_identifier_type Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39;
  # @option opts [UpdateTeamRoutingRulePayload] :body Request payload of update Team Routing Rule action
  # @return [SuccessResponse]
  describe 'update_team_routing_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
