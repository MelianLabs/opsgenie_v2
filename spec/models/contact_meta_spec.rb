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

# Unit tests for OpsgenieClient::ContactMeta
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactMeta' do
  before do
    # run before each test
    @instance = OpsgenieClient::ContactMeta.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactMeta' do
    it 'should create an instance of ContactMeta' do
      expect(@instance).to be_instance_of(OpsgenieClient::ContactMeta)
    end
  end
  describe 'test attribute "method"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["email", "sms", "voice", "mobile"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.method = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "to"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

