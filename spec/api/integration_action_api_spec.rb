=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieClient::IntegrationActionApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IntegrationActionApi' do
  before do
    # run before each test
    @instance = OpsgenieClient::IntegrationActionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IntegrationActionApi' do
    it 'should create an instance of IntegrationActionApi' do
      expect(@instance).to be_instance_of(OpsgenieClient::IntegrationActionApi)
    end
  end

  # unit tests for create_integration_action
  # Create Integration Action
  # Creates integration actions of given integration id
  # @param id Integration Id
  # @param body Request payload to create integration action
  # @param [Hash] opts the optional parameters
  # @return [CreateIntegrationActionsResponse]
  describe 'create_integration_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_integration_actions
  # List Integration Actions
  # List integration actions of given integration id
  # @param id Integration Id
  # @param [Hash] opts the optional parameters
  # @return [ListIntegrationActionsResponse]
  describe 'list_integration_actions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_integration_actions
  # Update Integration Actions
  # Updates integration actions of given integration id
  # @param id Integration Id
  # @param body Request payload to update integration actions
  # @param [Hash] opts the optional parameters
  # @return [UpdateIntegrationActionsResponse]
  describe 'update_integration_actions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
