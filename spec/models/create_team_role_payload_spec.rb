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

# Unit tests for OpsgenieClient::CreateTeamRolePayload
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateTeamRolePayload' do
  before do
    # run before each test
    @instance = OpsgenieClient::CreateTeamRolePayload.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateTeamRolePayload' do
    it 'should create an instance of CreateTeamRolePayload' do
      expect(@instance).to be_instance_of(OpsgenieClient::CreateTeamRolePayload)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "rights"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

