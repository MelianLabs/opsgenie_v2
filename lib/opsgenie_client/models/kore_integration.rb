=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module OpsgenieClient

  class KoreIntegration
    attr_accessor :alert_filter

    attr_accessor :alert_actions

    attr_accessor :callback_type

    attr_accessor :url

    attr_accessor :headers

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
        :'alert_filter' => :'alertFilter',
        :'alert_actions' => :'alertActions',
        :'callback_type' => :'callback-type',
        :'url' => :'url',
        :'headers' => :'headers',
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
        :'alert_filter' => :'AlertFilter',
        :'alert_actions' => :'Array<String>',
        :'callback_type' => :'String',
        :'url' => :'String',
        :'headers' => :'Hash<String, String>',
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

      if attributes.has_key?(:'alertFilter')
        self.alert_filter = attributes[:'alertFilter']
      end

      if attributes.has_key?(:'alertActions')
        if (value = attributes[:'alertActions']).is_a?(Array)
          self.alert_actions = value
        end
      end

      if attributes.has_key?(:'callback-type')
        self.callback_type = attributes[:'callback-type']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
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
      callback_type_validator = EnumAttributeValidator.new('String', ["bidirectional-callback", "webhook-callback", "campfire-callback", "flowdock-callback", "flowdock-v2-callback", "planio-callback"])
      return false unless callback_type_validator.valid?(@callback_type)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Airbrake", "AlertLogic", "AlertSite", "AmazonCloudTrail", "AmazonEc2AutoScaling", "AmazonRds", "AmazonRoute53HealthCheck", "AmazonSes", "AmazonSns", "AmazonSnsOutgoing", "API", "AppDynamics", "AppSignal", "Atatus", "AutotaskAEMEmail", "AutoTaskEmail", "Azure", "AzureOMS", "Boundary", "Campfire", "Catchpoint", "CheckMK", "Cherwell", "CircleCi", "Circonus", "CloudMonix", "CloudSploit", "CloudWatch", "Codeship", "Compose", "ConnectWise", "Consul", "CopperEgg", "Crashlytics", "Datadog", "DataloopIO", "Desk", "Detectify", "DNSCheck", "DripStat", "Email", "Errorception", "ESWatcher", "EvidentIO", "Flock", "Flowdock", "FlowdockV2", "Freshdesk", "Freshservice", "GhostInspector", "GoogleStackdriver", "GrafanaV2", "Graylog", "Heartbeat", "HipChatV2", "Honeybadger", "HostedGraphite", "Icinga", "Icinga2", "Jira", "JiraServiceDesk", "Kayako", "Kore", "LabTechEmail", "Librato", "Logentries", "Loggly", "LogicMonitor", "Logstash", "LogzIO", "Marid", "Mattermost", "MongoDBCloud", "Monitis", "Moxtra", "MSTeams", "NagiosV2", "NagiosXIV2", "NeustarEmail", "Netuitive", "NewRelic", "NewRelicV2", "NodePing", "ObserviumV2", "OEM", "OP5", "OpsDash", "OpsGenie", "PagerDutyCompatibility", "Panopta", "Papertrail", "PingdomV2", "Pingometer", "Planio", "Prometheus", "Prtg", "Rackspace", "RedGateSqlMonitorEmail", "Riemann", "Rigor", "RingCentralEmail", "RingCentralGlip", "Rollbar", "Runscope", "Ruxit", "Scalyr", "SCOM", "Scout", "SematextSpm", "Sensu", "ServerDensity", "ServerGuard24", "ServiceNowV2", "Signalfx", "SignalSciences", "Site24x7", "Soasta", "Solarwinds", "SolarwindsMSPNCentral", "SolarWindsWebHelpDesk", "Splunk", "Stackdriver", "StatusCake", "StatusIO", "StatusPageIO", "StruxureWare", "SumoLogic", "SysdigCloud", "ThousandEyes", "ThreatStack", "Tideways", "TravisCI", "Twilio", "UptimeRobot", "UptimeWebhook", "UptrendsEmail", "VCenter", "Wavefront", "Webhook", "Zabbix", "Zendesk", "Zenoss"])
      return false unless type_validator.valid?(@type)
      return false if @name.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] callback_type Object to be assigned
    def callback_type=(callback_type)
      validator = EnumAttributeValidator.new('String', ["bidirectional-callback", "webhook-callback", "campfire-callback", "flowdock-callback", "flowdock-v2-callback", "planio-callback"])
      unless validator.valid?(callback_type)
        fail ArgumentError, "invalid value for 'callback_type', must be one of #{validator.allowable_values}."
      end
      @callback_type = callback_type
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
          alert_filter == o.alert_filter &&
          alert_actions == o.alert_actions &&
          callback_type == o.callback_type &&
          url == o.url &&
          headers == o.headers &&
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
      [alert_filter, alert_actions, callback_type, url, headers, type, id, name, enabled, owner_team, is_global, _read_only].hash
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
