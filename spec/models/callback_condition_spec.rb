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

# Unit tests for OpsgenieClient::CallbackCondition
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CallbackCondition' do
  before do
    # run before each test
    @instance = OpsgenieClient::CallbackCondition.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallbackCondition' do
    it 'should create an instance of CallbackCondition' do
      expect(@instance).to be_instance_of(OpsgenieClient::CallbackCondition)
    end
  end
  describe 'test attribute "field"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["message", "alias", "description", "source", "entity", "tags", "actions", "extra-properties", "recipients", "teams", "priority"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.field = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "_not"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "operation"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["matches", "contains", "starts-with", "ends-with", "equals", "contains-key", "contains-value", "greater-than", "less-than", "is-empty", "equals-ignore-whitespace"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.operation = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "expected_value"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "order"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

