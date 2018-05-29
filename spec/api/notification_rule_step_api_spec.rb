=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieClient::NotificationRuleStepApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NotificationRuleStepApi' do
  before do
    # run before each test
    @instance = OpsgenieClient::NotificationRuleStepApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotificationRuleStepApi' do
    it 'should create an instance of NotificationRuleStepApi' do
      expect(@instance).to be_instance_of(OpsgenieClient::NotificationRuleStepApi)
    end
  end

  # unit tests for create_notification_rule_step
  # Create Notification Rule Step
  # Creates a new notification rule step
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param body Request payload to create notification rule step
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'create_notification_rule_step test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_notification_rule_step
  # Delete Notification Rule Step
  # Deletes a notification rule step using user identifier, rule id, notification rule step id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param id Id of the rule step will be changed.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'delete_notification_rule_step test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_notification_rule_step
  # Disable Notification Rule Step
  # Disables a new notification rule step
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param id Id of the rule step will be changed.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'disable_notification_rule_step test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_notification_rule_step
  # Enable Notification Rule Step
  # Enables a new notification rule step
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param id Id of the rule step will be changed.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'enable_notification_rule_step test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_notification_rule_step
  # Get Notification Rule Step
  # Returns notification rule step with given user identifier and rule id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param id Id of the rule step will be changed.
  # @param [Hash] opts the optional parameters
  # @return [GetNotificationRuleStepResponse]
  describe 'get_notification_rule_step test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_notification_rule_steps
  # List Notification Rule Steps
  # Returns list of notification rule steps
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param [Hash] opts the optional parameters
  # @return [ListNotificationRuleStepsResponse]
  describe 'list_notification_rule_steps test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_notification_rule_step
  # Update Notification Rule Step (Partial)
  # Update a notification rule step with given user identifier, rule id, and notification rule step id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param id Id of the rule step will be changed.
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateNotificationRuleStepPayload] :body Request payload of update schedule action
  # @return [SuccessResponse]
  describe 'update_notification_rule_step test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end