# OpsgenieClient::DeprecatedNotificationDelayAlertPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** | Name of the policy | [optional] 
**policy_description** | **String** | Description of the policy | [optional] 
**filter** | [**Filter**](Filter.md) | Conditions specified in this field must be met for this policy to work | [optional] 
**time_restrictions** | [**TimeRestrictionInterval**](TimeRestrictionInterval.md) | Time restrictions specified in this field must be met for this policy to work | [optional] 
**enabled** | **BOOLEAN** | Activity status of the alert policy | [optional] 
**type** | **String** | Type of the policy | 
**delay_option** | **String** | Delay type | [optional] 
**duration** | [**Duration**](Duration.md) | Interval to keep count of alerts for frequency based deduplication | [optional] 
**until_hour** | **Integer** | Should be a number between 0-23 | [optional] 
**until_minute** | **Integer** | Should be a number between 0-59 | [optional] 


