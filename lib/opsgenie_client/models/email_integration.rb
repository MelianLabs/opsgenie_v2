=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module OpsgenieClient

  class EmailIntegration
    # If enabled, notifications that come from alerts will be suppressed. Defaults to false
    attr_accessor :suppress_notifications

    # If enabled, the integration will ignore teams sent in request payloads. Defaults to false
    attr_accessor :ignore_teams_from_payload

    # If enabled, the integration will ignore recipients sent in request payloads. Defaults to false
    attr_accessor :ignore_recipients_from_payload

    # Optional user, schedule, teams or escalation names to calculate which users will receive the notifications of the alert. Recipients which are exceeding the limit are ignored
    attr_accessor :recipients

    attr_accessor :is_advanced

    attr_accessor :feature_type

    attr_accessor :email_address

    # The username part of the email address. It must be unique for each integration
    attr_accessor :email_username

    # Type of the integration. (For instance, \"API\" for API Integration)
    attr_accessor :type

    attr_accessor :id

    # Name of the integration. Name must be unique for each integration
    attr_accessor :name

    # This parameter is for specifying whether the integration will be enabled or not
    attr_accessor :enabled

    attr_accessor :owner_team

    attr_accessor :is_global

    attr_accessor :_read_only

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'suppress_notifications' => :'suppressNotifications',
        :'ignore_teams_from_payload' => :'ignoreTeamsFromPayload',
        :'ignore_recipients_from_payload' => :'ignoreRecipientsFromPayload',
        :'recipients' => :'recipients',
        :'is_advanced' => :'isAdvanced',
        :'feature_type' => :'feature-type',
        :'email_address' => :'emailAddress',
        :'email_username' => :'emailUsername',
        :'type' => :'type',
        :'id' => :'id',
        :'name' => :'name',
        :'enabled' => :'enabled',
        :'owner_team' => :'ownerTeam',
        :'is_global' => :'isGlobal',
        :'_read_only' => :'_readOnly'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'suppress_notifications' => :'BOOLEAN',
        :'ignore_teams_from_payload' => :'BOOLEAN',
        :'ignore_recipients_from_payload' => :'BOOLEAN',
        :'recipients' => :'Array<Recipient>',
        :'is_advanced' => :'BOOLEAN',
        :'feature_type' => :'String',
        :'email_address' => :'String',
        :'email_username' => :'String',
        :'type' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'enabled' => :'BOOLEAN',
        :'owner_team' => :'TeamMeta',
        :'is_global' => :'BOOLEAN',
        :'_read_only' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'suppressNotifications')
        self.suppress_notifications = attributes[:'suppressNotifications']
      end

      if attributes.has_key?(:'ignoreTeamsFromPayload')
        self.ignore_teams_from_payload = attributes[:'ignoreTeamsFromPayload']
      end

      if attributes.has_key?(:'ignoreRecipientsFromPayload')
        self.ignore_recipients_from_payload = attributes[:'ignoreRecipientsFromPayload']
      end

      if attributes.has_key?(:'recipients')
        if (value = attributes[:'recipients']).is_a?(Array)
          self.recipients = value
        end
      end

      if attributes.has_key?(:'isAdvanced')
        self.is_advanced = attributes[:'isAdvanced']
      end

      if attributes.has_key?(:'feature-type')
        self.feature_type = attributes[:'feature-type']
      end

      if attributes.has_key?(:'emailAddress')
        self.email_address = attributes[:'emailAddress']
      end

      if attributes.has_key?(:'emailUsername')
        self.email_username = attributes[:'emailUsername']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'ownerTeam')
        self.owner_team = attributes[:'ownerTeam']
      end

      if attributes.has_key?(:'isGlobal')
        self.is_global = attributes[:'isGlobal']
      end

      if attributes.has_key?(:'_readOnly')
        if (value = attributes[:'_readOnly']).is_a?(Array)
          self._read_only = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      feature_type_validator = EnumAttributeValidator.new('String', ["email-based", "token-based"])
      return false unless feature_type_validator.valid?(@feature_type)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Airbrake", "AlertLogic", "AlertSite", "AmazonCloudTrail", "AmazonEc2AutoScaling", "AmazonRds", "AmazonRoute53HealthCheck", "AmazonSes", "AmazonSns", "AmazonSnsOutgoing", "API", "AppDynamics", "AppSignal", "Atatus", "AutotaskAEMEmail", "AutoTaskEmail", "Azure", "AzureOMS", "Boundary", "Campfire", "Catchpoint", "CheckMK", "Cherwell", "CircleCi", "Circonus", "CloudMonix", "CloudSploit", "CloudWatch", "Codeship", "Compose", "ConnectWise", "Consul", "CopperEgg", "Crashlytics", "Datadog", "DataloopIO", "Desk", "Detectify", "DNSCheck", "DripStat", "Email", "Errorception", "ESWatcher", "EvidentIO", "Flock", "Flowdock", "FlowdockV2", "Freshdesk", "Freshservice", "GhostInspector", "GoogleStackdriver", "GrafanaV2", "Graylog", "Heartbeat", "HipChatV2", "Honeybadger", "HostedGraphite", "Icinga", "Icinga2", "Jira", "JiraServiceDesk", "Kayako", "Kore", "LabTechEmail", "Librato", "Logentries", "Loggly", "LogicMonitor", "Logstash", "LogzIO", "Marid", "Mattermost", "MongoDBCloud", "Monitis", "Moxtra", "MSTeams", "NagiosV2", "NagiosXIV2", "NeustarEmail", "Netuitive", "NewRelic", "NewRelicV2", "NodePing", "ObserviumV2", "OEM", "OP5", "OpsDash", "OpsGenie", "PagerDutyCompatibility", "Panopta", "Papertrail", "PingdomV2", "Pingometer", "Planio", "Prometheus", "Prtg", "Rackspace", "RedGateSqlMonitorEmail", "Riemann", "Rigor", "RingCentralEmail", "RingCentralGlip", "Rollbar", "Runscope", "Ruxit", "Scalyr", "SCOM", "Scout", "SematextSpm", "Sensu", "ServerDensity", "ServerGuard24", "ServiceNowV2", "Signalfx", "SignalSciences", "Site24x7", "Soasta", "Solarwinds", "SolarwindsMSPNCentral", "SolarWindsWebHelpDesk", "Splunk", "Stackdriver", "StatusCake", "StatusIO", "StatusPageIO", "StruxureWare", "SumoLogic", "SysdigCloud", "ThousandEyes", "ThreatStack", "Tideways", "TravisCI", "Twilio", "UptimeRobot", "UptimeWebhook", "UptrendsEmail", "VCenter", "Wavefront", "Webhook", "Zabbix", "Zendesk", "Zenoss"])
      return false unless type_validator.valid?(@type)
      return false if @name.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] feature_type Object to be assigned
    def feature_type=(feature_type)
      validator = EnumAttributeValidator.new('String', ["email-based", "token-based"])
      unless validator.valid?(feature_type)
        fail ArgumentError, "invalid value for 'feature_type', must be one of #{validator.allowable_values}."
      end
      @feature_type = feature_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Airbrake", "AlertLogic", "AlertSite", "AmazonCloudTrail", "AmazonEc2AutoScaling", "AmazonRds", "AmazonRoute53HealthCheck", "AmazonSes", "AmazonSns", "AmazonSnsOutgoing", "API", "AppDynamics", "AppSignal", "Atatus", "AutotaskAEMEmail", "AutoTaskEmail", "Azure", "AzureOMS", "Boundary", "Campfire", "Catchpoint", "CheckMK", "Cherwell", "CircleCi", "Circonus", "CloudMonix", "CloudSploit", "CloudWatch", "Codeship", "Compose", "ConnectWise", "Consul", "CopperEgg", "Crashlytics", "Datadog", "DataloopIO", "Desk", "Detectify", "DNSCheck", "DripStat", "Email", "Errorception", "ESWatcher", "EvidentIO", "Flock", "Flowdock", "FlowdockV2", "Freshdesk", "Freshservice", "GhostInspector", "GoogleStackdriver", "GrafanaV2", "Graylog", "Heartbeat", "HipChatV2", "Honeybadger", "HostedGraphite", "Icinga", "Icinga2", "Jira", "JiraServiceDesk", "Kayako", "Kore", "LabTechEmail", "Librato", "Logentries", "Loggly", "LogicMonitor", "Logstash", "LogzIO", "Marid", "Mattermost", "MongoDBCloud", "Monitis", "Moxtra", "MSTeams", "NagiosV2", "NagiosXIV2", "NeustarEmail", "Netuitive", "NewRelic", "NewRelicV2", "NodePing", "ObserviumV2", "OEM", "OP5", "OpsDash", "OpsGenie", "PagerDutyCompatibility", "Panopta", "Papertrail", "PingdomV2", "Pingometer", "Planio", "Prometheus", "Prtg", "Rackspace", "RedGateSqlMonitorEmail", "Riemann", "Rigor", "RingCentralEmail", "RingCentralGlip", "Rollbar", "Runscope", "Ruxit", "Scalyr", "SCOM", "Scout", "SematextSpm", "Sensu", "ServerDensity", "ServerGuard24", "ServiceNowV2", "Signalfx", "SignalSciences", "Site24x7", "Soasta", "Solarwinds", "SolarwindsMSPNCentral", "SolarWindsWebHelpDesk", "Splunk", "Stackdriver", "StatusCake", "StatusIO", "StatusPageIO", "StruxureWare", "SumoLogic", "SysdigCloud", "ThousandEyes", "ThreatStack", "Tideways", "TravisCI", "Twilio", "UptimeRobot", "UptimeWebhook", "UptrendsEmail", "VCenter", "Wavefront", "Webhook", "Zabbix", "Zendesk", "Zenoss"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          suppress_notifications == o.suppress_notifications &&
          ignore_teams_from_payload == o.ignore_teams_from_payload &&
          ignore_recipients_from_payload == o.ignore_recipients_from_payload &&
          recipients == o.recipients &&
          is_advanced == o.is_advanced &&
          feature_type == o.feature_type &&
          email_address == o.email_address &&
          email_username == o.email_username &&
          type == o.type &&
          id == o.id &&
          name == o.name &&
          enabled == o.enabled &&
          owner_team == o.owner_team &&
          is_global == o.is_global &&
          _read_only == o._read_only
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [suppress_notifications, ignore_teams_from_payload, ignore_recipients_from_payload, recipients, is_advanced, feature_type, email_address, email_username, type, id, name, enabled, owner_team, is_global, _read_only].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = OpsgenieClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
