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

# Unit tests for OpsgenieClient::TeamMember
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TeamMember' do
  before do
    # run before each test
    @instance = OpsgenieClient::TeamMember.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TeamMember' do
    it 'should create an instance of TeamMember' do
      expect(@instance).to be_instance_of(OpsgenieClient::TeamMember)
    end
  end
  describe 'test attribute "user"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "role"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

