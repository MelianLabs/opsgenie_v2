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

# Unit tests for OpsgenieClient::AmazonSnsCallback
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AmazonSnsCallback' do
  before do
    # run before each test
    @instance = OpsgenieClient::AmazonSnsCallback.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AmazonSnsCallback' do
    it 'should create an instance of AmazonSnsCallback' do
      expect(@instance).to be_instance_of(OpsgenieClient::AmazonSnsCallback)
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

  describe 'test attribute "topic_arn"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "region"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

