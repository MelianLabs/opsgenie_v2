=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpsgenieClient::WhoIsOnCallApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WhoIsOnCallApi' do
  before do
    # run before each test
    @instance = OpsgenieClient::WhoIsOnCallApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhoIsOnCallApi' do
    it 'should create an instance of WhoIsOnCallApi' do
      expect(@instance).to be_instance_of(OpsgenieClient::WhoIsOnCallApi)
    end
  end

  # unit tests for export_on_call_user
  # Export On-Call User
  # Exports personal on-call timeline of 3 months to a .ics file
  # @param identifier Identifier of the user. Should be either &#39;id&#39; or &#39;username&#39; of the user
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'export_on_call_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_next_on_calls
  # Get Next On Calls
  # Gets next on-call participants of a specific schedule
  # @param identifier Identifier of schedule which could be id or name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :schedule_identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
  # @option opts [BOOLEAN] :flat Retrieves user names of all on call participants if enabled
  # @option opts [DateTime] :date Starting date of the timeline
  # @return [GetNextOnCallResponse]
  describe 'get_next_on_calls test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_on_calls
  # Get On Calls
  # Gets current on-call participants of a specific schedule
  # @param identifier Identifier of schedule which could be id or name
  # @param [Hash] opts the optional parameters
  # @option opts [String] :schedule_identifier_type Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39;
  # @option opts [BOOLEAN] :flat Retrieves user names of all on call participants if enabled
  # @option opts [DateTime] :date Starting date of the timeline
  # @return [GetOnCallResponse]
  describe 'get_on_calls test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_on_calls
  # List On Calls
  # Lists current on-call participants of all schedules
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :flat Retrieves user names of all on call participants if enabled
  # @option opts [DateTime] :date Starting date of the timeline
  # @return [ListOnCallsResponse]
  describe 'list_on_calls test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
