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

# Unit tests for OpsgenieClient::AlertLogicIntegration
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AlertLogicIntegration' do
  before do
    # run before each test
    @instance = OpsgenieClient::AlertLogicIntegration.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AlertLogicIntegration' do
    it 'should create an instance of AlertLogicIntegration' do
      expect(@instance).to be_instance_of(OpsgenieClient::AlertLogicIntegration)
    end
  end
  describe 'test attribute "suppress_notifications"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ignore_teams_from_payload"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ignore_recipients_from_payload"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recipients"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_advanced"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "feature_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["email-based", "token-based"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.feature_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "allow_configuration_access"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "allow_write_access"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Airbrake", "AlertLogic", "AlertSite", "AmazonCloudTrail", "AmazonEc2AutoScaling", "AmazonRds", "AmazonRoute53HealthCheck", "AmazonSes", "AmazonSns", "AmazonSnsOutgoing", "API", "AppDynamics", "AppSignal", "Atatus", "AutotaskAEMEmail", "AutoTaskEmail", "Azure", "AzureOMS", "Boundary", "Campfire", "Catchpoint", "CheckMK", "Cherwell", "CircleCi", "Circonus", "CloudMonix", "CloudSploit", "CloudWatch", "Codeship", "Compose", "ConnectWise", "Consul", "CopperEgg", "Crashlytics", "Datadog", "DataloopIO", "Desk", "Detectify", "DNSCheck", "DripStat", "Email", "Errorception", "ESWatcher", "EvidentIO", "Flock", "Flowdock", "FlowdockV2", "Freshdesk", "Freshservice", "GhostInspector", "GoogleStackdriver", "GrafanaV2", "Graylog", "Heartbeat", "HipChatV2", "Honeybadger", "HostedGraphite", "Icinga", "Icinga2", "Jira", "JiraServiceDesk", "Kayako", "Kore", "LabTechEmail", "Librato", "Logentries", "Loggly", "LogicMonitor", "Logstash", "LogzIO", "Marid", "Mattermost", "MongoDBCloud", "Monitis", "Moxtra", "MSTeams", "NagiosV2", "NagiosXIV2", "NeustarEmail", "Netuitive", "NewRelic", "NewRelicV2", "NodePing", "ObserviumV2", "OEM", "OP5", "OpsDash", "OpsGenie", "PagerDutyCompatibility", "Panopta", "Papertrail", "PingdomV2", "Pingometer", "Planio", "Prometheus", "Prtg", "Rackspace", "RedGateSqlMonitorEmail", "Riemann", "Rigor", "RingCentralEmail", "RingCentralGlip", "Rollbar", "Runscope", "Ruxit", "Scalyr", "SCOM", "Scout", "SematextSpm", "Sensu", "ServerDensity", "ServerGuard24", "ServiceNowV2", "Signalfx", "SignalSciences", "Site24x7", "Soasta", "Solarwinds", "SolarwindsMSPNCentral", "SolarWindsWebHelpDesk", "Splunk", "Stackdriver", "StatusCake", "StatusIO", "StatusPageIO", "StruxureWare", "SumoLogic", "SysdigCloud", "ThousandEyes", "ThreatStack", "Tideways", "TravisCI", "Twilio", "UptimeRobot", "UptimeWebhook", "UptrendsEmail", "VCenter", "Wavefront", "Webhook", "Zabbix", "Zendesk", "Zenoss"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "enabled"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "owner_team"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_global"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "_read_only"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

