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

# Unit tests for OpsgenieClient::ZendeskCallback
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ZendeskCallback' do
  before do
    # run before each test
    @instance = OpsgenieClient::ZendeskCallback.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ZendeskCallback' do
    it 'should create an instance of ZendeskCallback' do
      expect(@instance).to be_instance_of(OpsgenieClient::ZendeskCallback)
    end
  end
  describe 'test attribute "alert_filter"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "forwarding_enabled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "forwarding_action_mappings"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "callback_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["bidirectional-callback-new", "amazon-sns-callback"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.callback_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "updates_action_mappings"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "updates_enabled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bidirectional_callback_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["opsgenie-callback", "jira-callback", "jira-service-desk-callback", "service-now-callback", "kayako-callback", "ms-teams-callback", "op5-callback", "status-page-io-callback", "zendesk-callback"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.bidirectional_callback_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "zendesk_api_token"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "zendesk_email"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "zendesk_subdomain"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
