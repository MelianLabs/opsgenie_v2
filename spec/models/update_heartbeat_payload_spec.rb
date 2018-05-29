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

# Unit tests for OpsgenieClient::UpdateHeartbeatPayload
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UpdateHeartbeatPayload' do
  before do
    # run before each test
    @instance = OpsgenieClient::UpdateHeartbeatPayload.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdateHeartbeatPayload' do
    it 'should create an instance of UpdateHeartbeatPayload' do
      expect(@instance).to be_instance_of(OpsgenieClient::UpdateHeartbeatPayload)
    end
  end
  describe 'test attribute "description"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "interval"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "interval_unit"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["minutes", "hours", "days"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.interval_unit = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "enabled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

