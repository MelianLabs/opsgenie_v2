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

# Unit tests for OpsgenieClient::NotifyTime
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'NotifyTime' do
  before do
    # run before each test
    @instance = OpsgenieClient::NotifyTime.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NotifyTime' do
    it 'should create an instance of NotifyTime' do
      expect(@instance).to be_instance_of(OpsgenieClient::NotifyTime)
    end
  end
end

