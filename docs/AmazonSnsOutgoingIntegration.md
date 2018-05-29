# OpsgenieClient::AmazonSnsOutgoingIntegration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_filter** | [**AlertFilter**](AlertFilter.md) |  | [optional] 
**forwarding_enabled** | **BOOLEAN** |  | [optional] 
**forwarding_action_mappings** | [**Array&lt;ActionMapping&gt;**](ActionMapping.md) |  | [optional] 
**callback_type** | **String** |  | [optional] 
**topic_arn** | **String** |  | [optional] 
**region** | **String** |  | [optional] 
**type** | **String** | Type of the integration. (For instance, \&quot;API\&quot; for API Integration) | 
**id** | **String** |  | [optional] 
**name** | **String** | Name of the integration. Name must be unique for each integration | 
**enabled** | **BOOLEAN** | This parameter is for specifying whether the integration will be enabled or not | [optional] 
**owner_team** | [**TeamMeta**](TeamMeta.md) |  | [optional] 
**is_global** | **BOOLEAN** |  | [optional] 
**_read_only** | **Array&lt;String&gt;** |  | [optional] 


