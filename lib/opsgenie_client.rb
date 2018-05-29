=begin
#OpsGenie REST API

#OpsGenie OpenAPI Specification

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

# Common files
require 'opsgenie_client/api_client'
require 'opsgenie_client/api_error'
require 'opsgenie_client/version'
require 'opsgenie_client/configuration'

# Models
require 'opsgenie_client/models/account_info'
require 'opsgenie_client/models/account_plan'
require 'opsgenie_client/models/action_categorized'
require 'opsgenie_client/models/action_mapping'
require 'opsgenie_client/models/add_team_member_payload'
require 'opsgenie_client/models/alert_action_payload'
require 'opsgenie_client/models/alert_attachment'
require 'opsgenie_client/models/alert_attachment_meta'
require 'opsgenie_client/models/alert_filter'
require 'opsgenie_client/models/alert_integration'
require 'opsgenie_client/models/alert_log'
require 'opsgenie_client/models/alert_note'
require 'opsgenie_client/models/alert_paging'
require 'opsgenie_client/models/alert_recipient'
require 'opsgenie_client/models/alert_report'
require 'opsgenie_client/models/alert_request_status'
require 'opsgenie_client/models/alert_team_meta'
require 'opsgenie_client/models/alert_user_meta'
require 'opsgenie_client/models/authenticate_integration_payload'
require 'opsgenie_client/models/auto_close_action'
require 'opsgenie_client/models/auto_restart_action'
require 'opsgenie_client/models/base_alert'
require 'opsgenie_client/models/base_incoming_feature'
require 'opsgenie_client/models/base_integration_action'
require 'opsgenie_client/models/base_response'
require 'opsgenie_client/models/callback_condition'
require 'opsgenie_client/models/change_notification_rule_order_payload'
require 'opsgenie_client/models/change_policy_order_payload'
require 'opsgenie_client/models/change_team_routing_rule_order_payload'
require 'opsgenie_client/models/common_integration_action'
require 'opsgenie_client/models/condition'
require 'opsgenie_client/models/contact'
require 'opsgenie_client/models/contact_meta'
require 'opsgenie_client/models/contact_status'
require 'opsgenie_client/models/contact_with_apply_order'
require 'opsgenie_client/models/create_contact_payload'
require 'opsgenie_client/models/create_custom_user_role_payload'
require 'opsgenie_client/models/create_escalation_payload'
require 'opsgenie_client/models/create_forwarding_rule_payload'
require 'opsgenie_client/models/create_heartbeat_payload'
require 'opsgenie_client/models/create_maintenance_payload'
require 'opsgenie_client/models/create_notification_rule_payload'
require 'opsgenie_client/models/create_notification_rule_step_payload'
require 'opsgenie_client/models/create_saved_search_payload'
require 'opsgenie_client/models/create_schedule_override_payload'
require 'opsgenie_client/models/create_schedule_payload'
require 'opsgenie_client/models/create_schedule_rotation_payload'
require 'opsgenie_client/models/create_team_payload'
require 'opsgenie_client/models/create_team_role_payload'
require 'opsgenie_client/models/create_team_routing_rule_payload'
require 'opsgenie_client/models/create_user_payload'
require 'opsgenie_client/models/custom_user_role'
require 'opsgenie_client/models/deduplication_action'
require 'opsgenie_client/models/delay_action'
require 'opsgenie_client/models/deprecated_alert_policy'
require 'opsgenie_client/models/deprecated_alert_policy_meta'
require 'opsgenie_client/models/deprecated_change_alert_policy_order_payload'
require 'opsgenie_client/models/duration'
require 'opsgenie_client/models/escalation'
require 'opsgenie_client/models/escalation_repeat'
require 'opsgenie_client/models/escalation_rule'
require 'opsgenie_client/models/filter'
require 'opsgenie_client/models/forwarding_rule'
require 'opsgenie_client/models/forwarding_rule_meta'
require 'opsgenie_client/models/heartbeat'
require 'opsgenie_client/models/heartbeat_meta'
require 'opsgenie_client/models/integration'
require 'opsgenie_client/models/integration_action_filter'
require 'opsgenie_client/models/integration_condition'
require 'opsgenie_client/models/integration_meta'
require 'opsgenie_client/models/maintenance'
require 'opsgenie_client/models/maintenance_entity'
require 'opsgenie_client/models/maintenance_meta'
require 'opsgenie_client/models/maintenance_rule'
require 'opsgenie_client/models/maintenance_time'
require 'opsgenie_client/models/next_on_call'
require 'opsgenie_client/models/notification_action_type'
require 'opsgenie_client/models/notification_repeat'
require 'opsgenie_client/models/notification_rule'
require 'opsgenie_client/models/notification_rule_meta'
require 'opsgenie_client/models/notification_rule_step'
require 'opsgenie_client/models/notification_rule_step_parent'
require 'opsgenie_client/models/notify_time'
require 'opsgenie_client/models/on_call'
require 'opsgenie_client/models/outgoing_callback'
require 'opsgenie_client/models/outgoing_callback_new'
require 'opsgenie_client/models/page_details'
require 'opsgenie_client/models/participant'
require 'opsgenie_client/models/policy'
require 'opsgenie_client/models/policy_meta'
require 'opsgenie_client/models/recipient'
require 'opsgenie_client/models/responder'
require 'opsgenie_client/models/saved_search'
require 'opsgenie_client/models/saved_search_entity'
require 'opsgenie_client/models/saved_search_meta'
require 'opsgenie_client/models/schedule'
require 'opsgenie_client/models/schedule_meta'
require 'opsgenie_client/models/schedule_override'
require 'opsgenie_client/models/schedule_override_meta'
require 'opsgenie_client/models/schedule_override_rotation'
require 'opsgenie_client/models/schedule_rotation'
require 'opsgenie_client/models/schedule_timeline'
require 'opsgenie_client/models/success_data'
require 'opsgenie_client/models/team'
require 'opsgenie_client/models/team_log'
require 'opsgenie_client/models/team_log_details'
require 'opsgenie_client/models/team_member'
require 'opsgenie_client/models/team_meta'
require 'opsgenie_client/models/team_right'
require 'opsgenie_client/models/team_role'
require 'opsgenie_client/models/team_routing_rule'
require 'opsgenie_client/models/time_of_day_restriction'
require 'opsgenie_client/models/time_restriction_interval'
require 'opsgenie_client/models/timeline'
require 'opsgenie_client/models/timeline_period'
require 'opsgenie_client/models/timeline_recipient'
require 'opsgenie_client/models/timeline_rotation'
require 'opsgenie_client/models/update_contact_payload'
require 'opsgenie_client/models/update_custom_user_role_payload'
require 'opsgenie_client/models/update_escalation_payload'
require 'opsgenie_client/models/update_forwarding_rule_payload'
require 'opsgenie_client/models/update_heartbeat_payload'
require 'opsgenie_client/models/update_maintenance_payload'
require 'opsgenie_client/models/update_notification_rule_payload'
require 'opsgenie_client/models/update_notification_rule_step_payload'
require 'opsgenie_client/models/update_schedule_override_payload'
require 'opsgenie_client/models/update_schedule_payload'
require 'opsgenie_client/models/update_schedule_rotation_payload'
require 'opsgenie_client/models/update_team_payload'
require 'opsgenie_client/models/update_team_role_payload'
require 'opsgenie_client/models/update_team_routing_rule_payload'
require 'opsgenie_client/models/update_user_payload'
require 'opsgenie_client/models/user'
require 'opsgenie_client/models/user_address'
require 'opsgenie_client/models/user_contact'
require 'opsgenie_client/models/user_meta'
require 'opsgenie_client/models/user_role'
require 'opsgenie_client/models/weekday_time_restriction'
require 'opsgenie_client/models/ack_integration_action'
require 'opsgenie_client/models/acknowledge_alert_payload'
require 'opsgenie_client/models/add_details_to_alert_payload'
require 'opsgenie_client/models/add_note_integration_action'
require 'opsgenie_client/models/add_note_to_alert_payload'
require 'opsgenie_client/models/add_responder_to_alert_payload'
require 'opsgenie_client/models/add_tags_to_alert_payload'
require 'opsgenie_client/models/add_team_to_alert_payload'
require 'opsgenie_client/models/airbrake_integration'
require 'opsgenie_client/models/alert'
require 'opsgenie_client/models/alert_logic_integration'
require 'opsgenie_client/models/alert_policy'
require 'opsgenie_client/models/alert_site_integration'
require 'opsgenie_client/models/all_recipient'
require 'opsgenie_client/models/amazon_cloud_trail_integration'
require 'opsgenie_client/models/amazon_ec2_auto_scaling_integration'
require 'opsgenie_client/models/amazon_rds_integration'
require 'opsgenie_client/models/amazon_route53_health_check_integration'
require 'opsgenie_client/models/amazon_ses_integration'
require 'opsgenie_client/models/amazon_sns_callback'
require 'opsgenie_client/models/amazon_sns_integration'
require 'opsgenie_client/models/amazon_sns_outgoing_integration'
require 'opsgenie_client/models/api_integration'
require 'opsgenie_client/models/app_dynamics_integration'
require 'opsgenie_client/models/app_signal_integration'
require 'opsgenie_client/models/assign_alert_payload'
require 'opsgenie_client/models/atatus_integration'
require 'opsgenie_client/models/auto_task_aem_email_integration'
require 'opsgenie_client/models/auto_task_email_integration'
require 'opsgenie_client/models/azure_integration'
require 'opsgenie_client/models/azure_oms_integration'
require 'opsgenie_client/models/base_response_with_expandable'
require 'opsgenie_client/models/bidirectional_callback'
require 'opsgenie_client/models/bidirectional_callback_new'
require 'opsgenie_client/models/boundary_integration'
require 'opsgenie_client/models/campfire_callback'
require 'opsgenie_client/models/campfire_integration'
require 'opsgenie_client/models/catchpoint_integration'
require 'opsgenie_client/models/check_mk_integration'
require 'opsgenie_client/models/cherwell_integration'
require 'opsgenie_client/models/circle_ci_integration'
require 'opsgenie_client/models/circonus_integration'
require 'opsgenie_client/models/close_alert_payload'
require 'opsgenie_client/models/close_integration_action'
require 'opsgenie_client/models/cloud_monix_integration'
require 'opsgenie_client/models/cloud_sploit_integration'
require 'opsgenie_client/models/cloud_watch_integration'
require 'opsgenie_client/models/codeship_integration'
require 'opsgenie_client/models/compose_integration'
require 'opsgenie_client/models/connect_wise_integration'
require 'opsgenie_client/models/consul_integration'
require 'opsgenie_client/models/copper_egg_integration'
require 'opsgenie_client/models/crashlytics_integration'
require 'opsgenie_client/models/create_alert_payload'
require 'opsgenie_client/models/create_forwarding_rule_response'
require 'opsgenie_client/models/create_heartbeat_response'
require 'opsgenie_client/models/create_integration_action'
require 'opsgenie_client/models/create_integration_actions_response'
require 'opsgenie_client/models/create_integration_response'
require 'opsgenie_client/models/create_maintenance_response'
require 'opsgenie_client/models/create_notification_rule_response'
require 'opsgenie_client/models/create_policy_response'
require 'opsgenie_client/models/create_saved_search_response'
require 'opsgenie_client/models/create_schedule_override_response'
require 'opsgenie_client/models/create_schedule_response'
require 'opsgenie_client/models/dns_check_integration'
require 'opsgenie_client/models/datadog_integration'
require 'opsgenie_client/models/dataloop_io_integration'
require 'opsgenie_client/models/deprecated_auto_close_alert_policy'
require 'opsgenie_client/models/deprecated_auto_restart_notifications_alert_policy'
require 'opsgenie_client/models/deprecated_create_alert_policy_response'
require 'opsgenie_client/models/deprecated_get_alert_policy_response'
require 'opsgenie_client/models/deprecated_list_alert_policies_response'
require 'opsgenie_client/models/deprecated_modify_alert_policy'
require 'opsgenie_client/models/deprecated_notification_deduplication_alert_policy'
require 'opsgenie_client/models/deprecated_notification_delay_alert_policy'
require 'opsgenie_client/models/deprecated_notification_renotify_alert_policy'
require 'opsgenie_client/models/deprecated_notification_suppress_alert_policy'
require 'opsgenie_client/models/desk_integration'
require 'opsgenie_client/models/detectify_integration'
require 'opsgenie_client/models/disable_heartbeat_response'
require 'opsgenie_client/models/disable_integration_response'
require 'opsgenie_client/models/drip_stat_integration'
require 'opsgenie_client/models/dynatrace_integration'
require 'opsgenie_client/models/email_based_incoming_feature'
require 'opsgenie_client/models/email_integration'
require 'opsgenie_client/models/enable_heartbeat_response'
require 'opsgenie_client/models/enable_integration_response'
require 'opsgenie_client/models/error_response'
require 'opsgenie_client/models/errorception_integration'
require 'opsgenie_client/models/escalate_alert_to_next_payload'
require 'opsgenie_client/models/escalation_recipient'
require 'opsgenie_client/models/evident_io_integration'
require 'opsgenie_client/models/execute_custom_alert_action_payload'
require 'opsgenie_client/models/flock_integration'
require 'opsgenie_client/models/flowdock_callback'
require 'opsgenie_client/models/flowdock_integration'
require 'opsgenie_client/models/flowdock_v2_callback'
require 'opsgenie_client/models/flowdock_v2_integration'
require 'opsgenie_client/models/freshdesk_integration'
require 'opsgenie_client/models/freshservice_integration'
require 'opsgenie_client/models/get_account_info_response'
require 'opsgenie_client/models/get_alert_attachment_response'
require 'opsgenie_client/models/get_alert_response'
require 'opsgenie_client/models/get_contact_response'
require 'opsgenie_client/models/get_custom_user_role_response'
require 'opsgenie_client/models/get_escalation_response'
require 'opsgenie_client/models/get_forwarding_rule_response'
require 'opsgenie_client/models/get_heartbeat_response'
require 'opsgenie_client/models/get_integration_response'
require 'opsgenie_client/models/get_maintenance_response'
require 'opsgenie_client/models/get_next_on_call_response'
require 'opsgenie_client/models/get_notification_rule_response'
require 'opsgenie_client/models/get_notification_rule_step_response'
require 'opsgenie_client/models/get_on_call_response'
require 'opsgenie_client/models/get_policy_response'
require 'opsgenie_client/models/get_request_status_response'
require 'opsgenie_client/models/get_saved_search_response'
require 'opsgenie_client/models/get_schedule_override_response'
require 'opsgenie_client/models/get_schedule_response'
require 'opsgenie_client/models/get_schedule_rotation_response'
require 'opsgenie_client/models/get_team_response'
require 'opsgenie_client/models/get_team_role_response'
require 'opsgenie_client/models/get_team_routing_rule_response'
require 'opsgenie_client/models/ghost_inspector_integration'
require 'opsgenie_client/models/google_stackdriver_integration'
require 'opsgenie_client/models/grafana_v2_integration'
require 'opsgenie_client/models/graylog_integration'
require 'opsgenie_client/models/group_recipient'
require 'opsgenie_client/models/heartbeat_integration'
require 'opsgenie_client/models/hipchat_v2_integration'
require 'opsgenie_client/models/honeybadger_integration'
require 'opsgenie_client/models/hosted_graphite_integration'
require 'opsgenie_client/models/icinga2_integration'
require 'opsgenie_client/models/icinga_integration'
require 'opsgenie_client/models/ignore_integration_action'
require 'opsgenie_client/models/jira_integration'
require 'opsgenie_client/models/jira_service_desk_integration'
require 'opsgenie_client/models/kayako_integration'
require 'opsgenie_client/models/kore_integration'
require 'opsgenie_client/models/lab_tech_email_integration'
require 'opsgenie_client/models/librato_integration'
require 'opsgenie_client/models/list_alert_attachments_response'
require 'opsgenie_client/models/list_alert_logs_response'
require 'opsgenie_client/models/list_alert_notes_response'
require 'opsgenie_client/models/list_alert_recipients_response'
require 'opsgenie_client/models/list_alerts_response'
require 'opsgenie_client/models/list_contacts_response'
require 'opsgenie_client/models/list_custom_user_roles_response'
require 'opsgenie_client/models/list_escalations_response'
require 'opsgenie_client/models/list_forwarding_rules_response'
require 'opsgenie_client/models/list_integration_actions_response'
require 'opsgenie_client/models/list_integrations_response'
require 'opsgenie_client/models/list_maintenance_response'
require 'opsgenie_client/models/list_notification_rule_steps_response'
require 'opsgenie_client/models/list_notification_rules_response'
require 'opsgenie_client/models/list_on_calls_response'
require 'opsgenie_client/models/list_policies_response'
require 'opsgenie_client/models/list_saved_searches_response'
require 'opsgenie_client/models/list_schedule_override_response'
require 'opsgenie_client/models/list_schedule_rotations_response'
require 'opsgenie_client/models/list_team_logs_response'
require 'opsgenie_client/models/list_team_role_response'
require 'opsgenie_client/models/list_team_routing_rules_response'
require 'opsgenie_client/models/list_user_escalations_response'
require 'opsgenie_client/models/list_user_forwarding_rules_response'
require 'opsgenie_client/models/list_user_schedules_response'
require 'opsgenie_client/models/list_user_teams_response'
require 'opsgenie_client/models/list_users_response'
require 'opsgenie_client/models/logentries_integration'
require 'opsgenie_client/models/loggly_integration'
require 'opsgenie_client/models/logic_monitor_integration'
require 'opsgenie_client/models/logstash_integration'
require 'opsgenie_client/models/logz_io_integration'
require 'opsgenie_client/models/ms_teams_integration'
require 'opsgenie_client/models/marid_integration'
require 'opsgenie_client/models/match_all'
require 'opsgenie_client/models/match_all_conditions'
require 'opsgenie_client/models/match_any_condition'
require 'opsgenie_client/models/mattermost_integration'
require 'opsgenie_client/models/mongo_db_cloud_integration'
require 'opsgenie_client/models/monitis_integration'
require 'opsgenie_client/models/moxtra_integration'
require 'opsgenie_client/models/nagios_v2_integration'
require 'opsgenie_client/models/nagios_xiv2_integration'
require 'opsgenie_client/models/netuitive_integration'
require 'opsgenie_client/models/neustar_integration'
require 'opsgenie_client/models/new_relic_integration'
require 'opsgenie_client/models/new_relic_v2_integration'
require 'opsgenie_client/models/no_recipient'
require 'opsgenie_client/models/node_ping_integration'
require 'opsgenie_client/models/notification_policy'
require 'opsgenie_client/models/oem_integration'
require 'opsgenie_client/models/observium_v2_integration'
require 'opsgenie_client/models/op5_integration'
require 'opsgenie_client/models/ops_dash_integration'
require 'opsgenie_client/models/opsgenie_integration'
require 'opsgenie_client/models/pager_duty_compatibility_integration'
require 'opsgenie_client/models/panopta_integration'
require 'opsgenie_client/models/papertrail_integration'
require 'opsgenie_client/models/pingdom_v2_integration'
require 'opsgenie_client/models/pingometer_integration'
require 'opsgenie_client/models/planio_callback'
require 'opsgenie_client/models/planio_integration'
require 'opsgenie_client/models/prometheus_integration'
require 'opsgenie_client/models/prtg_integration'
require 'opsgenie_client/models/rackspace_integration'
require 'opsgenie_client/models/red_gate_sql_monitor_email_integration'
require 'opsgenie_client/models/riemann_integration'
require 'opsgenie_client/models/rigor_integration'
require 'opsgenie_client/models/ring_central_email_integration'
require 'opsgenie_client/models/ring_central_glip_integration'
require 'opsgenie_client/models/rollbar_integration'
require 'opsgenie_client/models/runscope_integration'
require 'opsgenie_client/models/scom_integration'
require 'opsgenie_client/models/scalyr_integration'
require 'opsgenie_client/models/schedule_recipient'
require 'opsgenie_client/models/schedule_rotation_with_parent'
require 'opsgenie_client/models/scout_integration'
require 'opsgenie_client/models/sematext_spm_integration'
require 'opsgenie_client/models/sensu_integration'
require 'opsgenie_client/models/server_density_integration'
require 'opsgenie_client/models/server_guard24_integration'
require 'opsgenie_client/models/service_now_v2_integration'
require 'opsgenie_client/models/signal_sciences_integration'
require 'opsgenie_client/models/signalfx_integration'
require 'opsgenie_client/models/site24x7_integration'
require 'opsgenie_client/models/snooze_alert_payload'
require 'opsgenie_client/models/soasta_integration'
require 'opsgenie_client/models/solar_winds_web_help_desk_integration'
require 'opsgenie_client/models/solarwinds_integration'
require 'opsgenie_client/models/solarwinds_mspn_central_integration'
require 'opsgenie_client/models/splunk_integration'
require 'opsgenie_client/models/stackdriver_integration'
require 'opsgenie_client/models/status_cake_integration'
require 'opsgenie_client/models/status_io_integration'
require 'opsgenie_client/models/status_page_io_integration'
require 'opsgenie_client/models/struxure_ware_integration'
require 'opsgenie_client/models/success_response'
require 'opsgenie_client/models/sumo_logic_integration'
require 'opsgenie_client/models/sysdig_cloud_integration'
require 'opsgenie_client/models/team_recipient'
require 'opsgenie_client/models/team_responder'
require 'opsgenie_client/models/thousand_eyes_integration'
require 'opsgenie_client/models/threat_stack_integration'
require 'opsgenie_client/models/tideways_integration'
require 'opsgenie_client/models/time_of_day_restriction_interval'
require 'opsgenie_client/models/token_based_incoming_feature'
require 'opsgenie_client/models/travis_ci_integration'
require 'opsgenie_client/models/twilio_ci_integration'
require 'opsgenie_client/models/un_acknowledge_alert_payload'
require 'opsgenie_client/models/update_heartbeat_response'
require 'opsgenie_client/models/update_integration_actions_response'
require 'opsgenie_client/models/update_integration_response'
require 'opsgenie_client/models/update_maintenance_response'
require 'opsgenie_client/models/update_notification_rule_response'
require 'opsgenie_client/models/update_schedule_override_response'
require 'opsgenie_client/models/update_schedule_response'
require 'opsgenie_client/models/uptime_robot_integration'
require 'opsgenie_client/models/uptime_webhook_integration'
require 'opsgenie_client/models/uptrends_email_integration'
require 'opsgenie_client/models/user_recipient'
require 'opsgenie_client/models/user_responder'
require 'opsgenie_client/models/v_center_integration'
require 'opsgenie_client/models/wavefront_integration'
require 'opsgenie_client/models/webhook_callback'
require 'opsgenie_client/models/webhook_integration'
require 'opsgenie_client/models/weekday_time_restriction_interval'
require 'opsgenie_client/models/x_pack_alerting_integration'
require 'opsgenie_client/models/zabbix_integration'
require 'opsgenie_client/models/zendesk_integration'
require 'opsgenie_client/models/zenoss_integration'
require 'opsgenie_client/models/circonus_callback'
require 'opsgenie_client/models/connect_wise_callback'
require 'opsgenie_client/models/datadog_callback'
require 'opsgenie_client/models/desk_callback'
require 'opsgenie_client/models/freshdesk_callback'
require 'opsgenie_client/models/get_schedule_timeline_response'
require 'opsgenie_client/models/get_user_response'
require 'opsgenie_client/models/hipchat_callback'
require 'opsgenie_client/models/jira_callback'
require 'opsgenie_client/models/jira_service_desk_callback'
require 'opsgenie_client/models/kayako_callback'
require 'opsgenie_client/models/list_schedules_response'
require 'opsgenie_client/models/list_teams_response'
require 'opsgenie_client/models/logic_monitor_callback'
require 'opsgenie_client/models/ms_teams_callback'
require 'opsgenie_client/models/marid_callback'
require 'opsgenie_client/models/mattermost_callback'
require 'opsgenie_client/models/op5_callback'
require 'opsgenie_client/models/opsgenie_callback'
require 'opsgenie_client/models/service_now_callback'
require 'opsgenie_client/models/solar_winds_web_help_desk_callback'
require 'opsgenie_client/models/stackdriver_callback'
require 'opsgenie_client/models/status_io_callback'
require 'opsgenie_client/models/status_page_io_callback'
require 'opsgenie_client/models/x_pack_alerting_callback'
require 'opsgenie_client/models/zendesk_callback'

# APIs
require 'opsgenie_client/api/account_api'
require 'opsgenie_client/api/alert_api'
require 'opsgenie_client/api/contact_api'
require 'opsgenie_client/api/custom_user_role_api'
require 'opsgenie_client/api/deprecated_policy_api'
require 'opsgenie_client/api/escalation_api'
require 'opsgenie_client/api/forwarding_rule_api'
require 'opsgenie_client/api/heartbeat_api'
require 'opsgenie_client/api/integration_api'
require 'opsgenie_client/api/integration_action_api'
require 'opsgenie_client/api/maintenance_api'
require 'opsgenie_client/api/notification_rule_api'
require 'opsgenie_client/api/notification_rule_step_api'
require 'opsgenie_client/api/policy_api'
require 'opsgenie_client/api/schedule_api'
require 'opsgenie_client/api/schedule_override_api'
require 'opsgenie_client/api/schedule_rotation_api'
require 'opsgenie_client/api/team_api'
require 'opsgenie_client/api/team_member_api'
require 'opsgenie_client/api/team_role_api'
require 'opsgenie_client/api/team_routing_rule_api'
require 'opsgenie_client/api/user_api'
require 'opsgenie_client/api/who_is_on_call_api'

module OpsgenieClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpsgenieClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end