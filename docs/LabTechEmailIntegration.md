# OpsgenieClient::LabTechEmailIntegration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**suppress_notifications** | **BOOLEAN** | If enabled, notifications that come from alerts will be suppressed. Defaults to false | [optional] 
**ignore_teams_from_payload** | **BOOLEAN** | If enabled, the integration will ignore teams sent in request payloads. Defaults to false | [optional] 
**ignore_recipients_from_payload** | **BOOLEAN** | If enabled, the integration will ignore recipients sent in request payloads. Defaults to false | [optional] 
**recipients** | [**Array&lt;Recipient&gt;**](Recipient.md) | Optional user, schedule, teams or escalation names to calculate which users will receive the notifications of the alert. Recipients which are exceeding the limit are ignored | [optional] 
**is_advanced** | **BOOLEAN** |  | [optional] 
**feature_type** | **String** |  | [optional] 
**email_address** | **String** |  | [optional] 
**email_username** | **String** | The username part of the email address. It must be unique for each integration | [optional] 
**type** | **String** | Type of the integration. (For instance, \&quot;API\&quot; for API Integration) | 
**id** | **String** |  | [optional] 
**name** | **String** | Name of the integration. Name must be unique for each integration | 
**enabled** | **BOOLEAN** | This parameter is for specifying whether the integration will be enabled or not | [optional] 
**owner_team** | [**TeamMeta**](TeamMeta.md) |  | [optional] 
**is_global** | **BOOLEAN** |  | [optional] 
**_read_only** | **Array&lt;String&gt;** |  | [optional] 


