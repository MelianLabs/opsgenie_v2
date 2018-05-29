# OpsgenieClient::DeprecatedAutoRestartNotificationsAlertPolicy

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
**duration** | [**Duration**](Duration.md) | Duration to wait before restarting the notification flow | [optional] 
**max_repeat_count** | **Integer** | Max restart count of the notification flow | [optional] 


