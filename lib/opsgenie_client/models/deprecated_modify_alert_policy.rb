=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module OpsgenieClient

  class DeprecatedModifyAlertPolicy
    attr_accessor :id

    # Name of the policy
    attr_accessor :name

    # Description of the policy
    attr_accessor :policy_description

    # Conditions specified in this field must be met for this policy to work
    attr_accessor :filter

    # Time restrictions specified in this field must be met for this policy to work
    attr_accessor :time_restrictions

    # Activity status of the alert policy
    attr_accessor :enabled

    # Type of the policy
    attr_accessor :type

    attr_accessor :ignore_original_alert_actions

    # If set to true, policy will ignore the original details of the alert. Default value is false
    attr_accessor :ignore_original_details

    # If set to true, policy will ignore the original recipients of the alert. Default value is false
    attr_accessor :ignore_original_recipients

    # If set to true, policy will ignore the original tags of the alert. Default value is false
    attr_accessor :ignore_original_tags

    # If set to true, policy will ignore the original teams of the alert. Default value is false
    attr_accessor :ignore_original_teams

    # Will continue with other modify policies if set to true
    attr_accessor :continue

    # Alias of the alert. You can use {{alias}} to refer to the original alias. Default value is {{alias}}
    attr_accessor :_alias

    # Description of the alert. You can use {{description}} to refer to the original alert description. Default value is {{description}}
    attr_accessor :description

    # Entity field of the alert. You can use {{entity}} to refer to the original entity. Default value is {{entity}}
    attr_accessor :entity

    # Message of the alert
    attr_accessor :message

    # Source field of the alert. You can use {{source}} to refer to the original source. Default value is {{source}}
    attr_accessor :source

    # Alert actions as a list of strings to add to the alerts original actions value. If ignoreOriginalAlertActions field is set to true, this will replace the original actions.
    attr_accessor :actions

    # Recipients to add to the alerts original recipients value as a list of escalations, schedules, teams, users or the reserved word none or all. If ignoreOriginalRecipients field is set to true, this will replace the original recipients.
    attr_accessor :recipients

    # Tags to add to the alerts original tags value as a list of strings. If ignoreOriginalRecipients field is set to true, this will replace the original recipients.
    attr_accessor :tags

    # Custom properties to add to the alerts original details value as a list of strings. If ignoreOriginalDetails field is set to true, this will replace the original details.
    attr_accessor :details

    # Priority level of the alert
    attr_accessor :priority

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
        :'id' => :'id',
        :'name' => :'name',
        :'policy_description' => :'policyDescription',
        :'filter' => :'filter',
        :'time_restrictions' => :'timeRestrictions',
        :'enabled' => :'enabled',
        :'type' => :'type',
        :'ignore_original_alert_actions' => :'ignoreOriginalAlertActions',
        :'ignore_original_details' => :'ignoreOriginalDetails',
        :'ignore_original_recipients' => :'ignoreOriginalRecipients',
        :'ignore_original_tags' => :'ignoreOriginalTags',
        :'ignore_original_teams' => :'ignoreOriginalTeams',
        :'continue' => :'continue',
        :'_alias' => :'alias',
        :'description' => :'description',
        :'entity' => :'entity',
        :'message' => :'message',
        :'source' => :'source',
        :'actions' => :'actions',
        :'recipients' => :'recipients',
        :'tags' => :'tags',
        :'details' => :'details',
        :'priority' => :'priority'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'policy_description' => :'String',
        :'filter' => :'Filter',
        :'time_restrictions' => :'TimeRestrictionInterval',
        :'enabled' => :'BOOLEAN',
        :'type' => :'String',
        :'ignore_original_alert_actions' => :'BOOLEAN',
        :'ignore_original_details' => :'BOOLEAN',
        :'ignore_original_recipients' => :'BOOLEAN',
        :'ignore_original_tags' => :'BOOLEAN',
        :'ignore_original_teams' => :'BOOLEAN',
        :'continue' => :'BOOLEAN',
        :'_alias' => :'String',
        :'description' => :'String',
        :'entity' => :'String',
        :'message' => :'String',
        :'source' => :'String',
        :'actions' => :'Array<String>',
        :'recipients' => :'Array<Recipient>',
        :'tags' => :'Array<String>',
        :'details' => :'Hash<String, String>',
        :'priority' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'policyDescription')
        self.policy_description = attributes[:'policyDescription']
      end

      if attributes.has_key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.has_key?(:'timeRestrictions')
        self.time_restrictions = attributes[:'timeRestrictions']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'ignoreOriginalAlertActions')
        self.ignore_original_alert_actions = attributes[:'ignoreOriginalAlertActions']
      end

      if attributes.has_key?(:'ignoreOriginalDetails')
        self.ignore_original_details = attributes[:'ignoreOriginalDetails']
      end

      if attributes.has_key?(:'ignoreOriginalRecipients')
        self.ignore_original_recipients = attributes[:'ignoreOriginalRecipients']
      end

      if attributes.has_key?(:'ignoreOriginalTags')
        self.ignore_original_tags = attributes[:'ignoreOriginalTags']
      end

      if attributes.has_key?(:'ignoreOriginalTeams')
        self.ignore_original_teams = attributes[:'ignoreOriginalTeams']
      end

      if attributes.has_key?(:'continue')
        self.continue = attributes[:'continue']
      end

      if attributes.has_key?(:'alias')
        self._alias = attributes[:'alias']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'entity')
        self.entity = attributes[:'entity']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'actions')
        if (value = attributes[:'actions']).is_a?(Array)
          self.actions = value
        end
      end

      if attributes.has_key?(:'recipients')
        if (value = attributes[:'recipients']).is_a?(Array)
          self.recipients = value
        end
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'details')
        if (value = attributes[:'details']).is_a?(Hash)
          self.details = value
        end
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["modify", "auto-close", "notification-delay", "notification-deduplication", "notification-suppress", "notification-renotify", "auto-restart-notifications"])
      return false unless type_validator.valid?(@type)
      priority_validator = EnumAttributeValidator.new('String', ["P1", "P2", "P3", "P4", "P5"])
      return false unless priority_validator.valid?(@priority)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["modify", "auto-close", "notification-delay", "notification-deduplication", "notification-suppress", "notification-renotify", "auto-restart-notifications"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] priority Object to be assigned
    def priority=(priority)
      validator = EnumAttributeValidator.new('String', ["P1", "P2", "P3", "P4", "P5"])
      unless validator.valid?(priority)
        fail ArgumentError, "invalid value for 'priority', must be one of #{validator.allowable_values}."
      end
      @priority = priority
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          policy_description == o.policy_description &&
          filter == o.filter &&
          time_restrictions == o.time_restrictions &&
          enabled == o.enabled &&
          type == o.type &&
          ignore_original_alert_actions == o.ignore_original_alert_actions &&
          ignore_original_details == o.ignore_original_details &&
          ignore_original_recipients == o.ignore_original_recipients &&
          ignore_original_tags == o.ignore_original_tags &&
          ignore_original_teams == o.ignore_original_teams &&
          continue == o.continue &&
          _alias == o._alias &&
          description == o.description &&
          entity == o.entity &&
          message == o.message &&
          source == o.source &&
          actions == o.actions &&
          recipients == o.recipients &&
          tags == o.tags &&
          details == o.details &&
          priority == o.priority
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, policy_description, filter, time_restrictions, enabled, type, ignore_original_alert_actions, ignore_original_details, ignore_original_recipients, ignore_original_tags, ignore_original_teams, continue, _alias, description, entity, message, source, actions, recipients, tags, details, priority].hash
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