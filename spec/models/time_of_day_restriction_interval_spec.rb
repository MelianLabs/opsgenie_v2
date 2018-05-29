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

# Unit tests for OpsgenieClient::TimeOfDayRestrictionInterval
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TimeOfDayRestrictionInterval' do
  before do
    # run before each test
    @instance = OpsgenieClient::TimeOfDayRestrictionInterval.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TimeOfDayRestrictionInterval' do
    it 'should create an instance of TimeOfDayRestrictionInterval' do
      expect(@instance).to be_instance_of(OpsgenieClient::TimeOfDayRestrictionInterval)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["weekday-and-time-of-day", "time-of-day"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "restriction"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

