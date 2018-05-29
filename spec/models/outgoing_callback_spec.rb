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

# Unit tests for OpsgenieClient::OutgoingCallback
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OutgoingCallback' do
  before do
    # run before each test
    @instance = OpsgenieClient::OutgoingCallback.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OutgoingCallback' do
    it 'should create an instance of OutgoingCallback' do
      expect(@instance).to be_instance_of(OpsgenieClient::OutgoingCallback)
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

end

