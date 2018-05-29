=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpsgenieClient::LogicMonitorCallback
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LogicMonitorCallback' do
  before do
    # run before each test
    @instance = OpsgenieClient::LogicMonitorCallback.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogicMonitorCallback' do
    it 'should create an instance of LogicMonitorCallback' do
      expect(@instance).to be_instance_of(OpsgenieClient::LogicMonitorCallback)
    end
  end
  describe 'test attribute "alert_filter"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "alert_actions"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "callback_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bidirectional-callback", "webhook-callback", "campfire-callback", "flowdock-callback", "flowdock-v2-callback", "planio-callback"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.callback_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "send_alert_actions"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bidirectional_callback_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["datadog-callback", "circonus-callback", "connect-wise-callback", "desk-callback", "es-watcher-callback", "freshdesk-callback", "hipchat-callback", "marid-callback", "logic-monitor-callback", "mattermost-callback", "slack-callback", "solarwinds-web-helpdesk-callback", "stackdriver-callback", "status-io-callback"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.bidirectional_callback_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "account_name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "username"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "password"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
