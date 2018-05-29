=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module OpsgenieClient

  class NotificationPolicy
    attr_accessor :id

    # Name of the policy
    attr_accessor :name

    # Description of the policy
    attr_accessor :policy_description

    # TeamId of the policy
    attr_accessor :team_id

    # Conditions specified in this field must be met for this policy to work
    attr_accessor :filter

    # Time restrictions specified in this field must be met for this policy to work
    attr_accessor :time_restrictions

    # Activity status of the alert policy
    attr_accessor :enabled

    # Type of the policy
    attr_accessor :type

    # Auto-restart action defined for the policy.
    attr_accessor :auto_restart_action

    # Auto-close action defined for the policy.
    attr_accessor :auto_close_action

    # Deduplication action defined for the policy.
    attr_accessor :deduplication_action

    # Delay action defined for the policy.
    attr_accessor :delay_action

    # If set to true, notifications related to the matching alert will be suppressed. Default value is false.
    attr_accessor :suppress

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
        :'team_id' => :'teamId',
        :'filter' => :'filter',
        :'time_restrictions' => :'timeRestrictions',
        :'enabled' => :'enabled',
        :'type' => :'type',
        :'auto_restart_action' => :'autoRestartAction',
        :'auto_close_action' => :'autoCloseAction',
        :'deduplication_action' => :'deduplicationAction',
        :'delay_action' => :'delayAction',
        :'suppress' => :'suppress'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'policy_description' => :'String',
        :'team_id' => :'String',
        :'filter' => :'Filter',
        :'time_restrictions' => :'TimeRestrictionInterval',
        :'enabled' => :'BOOLEAN',
        :'type' => :'String',
        :'auto_restart_action' => :'AutoRestartAction',
        :'auto_close_action' => :'AutoCloseAction',
        :'deduplication_action' => :'DeduplicationAction',
        :'delay_action' => :'DelayAction',
        :'suppress' => :'BOOLEAN'
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

      if attributes.has_key?(:'teamId')
        self.team_id = attributes[:'teamId']
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

      if attributes.has_key?(:'autoRestartAction')
        self.auto_restart_action = attributes[:'autoRestartAction']
      end

      if attributes.has_key?(:'autoCloseAction')
        self.auto_close_action = attributes[:'autoCloseAction']
      end

      if attributes.has_key?(:'deduplicationAction')
        self.deduplication_action = attributes[:'deduplicationAction']
      end

      if attributes.has_key?(:'delayAction')
        self.delay_action = attributes[:'delayAction']
      end

      if attributes.has_key?(:'suppress')
        self.suppress = attributes[:'suppress']
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
      type_validator = EnumAttributeValidator.new('String', ["alert", "notification"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["alert", "notification"])
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
          id == o.id &&
          name == o.name &&
          policy_description == o.policy_description &&
          team_id == o.team_id &&
          filter == o.filter &&
          time_restrictions == o.time_restrictions &&
          enabled == o.enabled &&
          type == o.type &&
          auto_restart_action == o.auto_restart_action &&
          auto_close_action == o.auto_close_action &&
          deduplication_action == o.deduplication_action &&
          delay_action == o.delay_action &&
          suppress == o.suppress
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, policy_description, team_id, filter, time_restrictions, enabled, type, auto_restart_action, auto_close_action, deduplication_action, delay_action, suppress].hash
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
