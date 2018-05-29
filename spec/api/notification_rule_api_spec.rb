=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieClient::NotificationRuleApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NotificationRuleApi' do
  before do
    # run before each test
    @instance = OpsgenieClient::NotificationRuleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotificationRuleApi' do
    it 'should create an instance of NotificationRuleApi' do
      expect(@instance).to be_instance_of(OpsgenieClient::NotificationRuleApi)
    end
  end

  # unit tests for change_notification_rule_order
  # Change order of Notification Rule
  # Changes order of a notification rule with given notification rule id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param body Request payload of change order of notification rule
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'change_notification_rule_order test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_notification_rule
  # Create Notification Rule
  # Creates a new notification rule
  # @param identifier Identifier of the user to be searched
  # @param body Request payload of create notification rule
  # @param [Hash] opts the optional parameters
  # @return [CreateNotificationRuleResponse]
  describe 'create_notification_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_notification_rule
  # Delete Notification Rule
  # Deletes a notification rule with given notification rule id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'delete_notification_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_notification_rule
  # Disable Notification Rule
  # Disables a notification rule with given notification rule id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'disable_notification_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for enable_notification_rule
  # Enable Notification Rule
  # Enables a notification rule with given notification rule id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param [Hash] opts the optional parameters
  # @return [SuccessResponse]
  describe 'enable_notification_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_notification_rule
  # Get Notification Rule
  # Returns notification rule with given id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param [Hash] opts the optional parameters
  # @return [GetNotificationRuleResponse]
  describe 'get_notification_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_notification_rules
  # List Notification Rules
  # Returns list of notification rules
  # @param identifier Identifier of the user to be searched
  # @param [Hash] opts the optional parameters
  # @return [ListNotificationRulesResponse]
  describe 'list_notification_rules test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_notification_rule
  # Update Notification Rule (Partial)
  # Updates the notification rule with given notification rule id
  # @param identifier Identifier of the user to be searched
  # @param rule_id Id of the notification rule that step will belong to.
  # @param body Request payload of update notification rule
  # @param [Hash] opts the optional parameters
  # @return [UpdateNotificationRuleResponse]
  describe 'update_notification_rule test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
