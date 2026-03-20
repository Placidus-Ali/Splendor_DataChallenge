WITH base AS (
    SELECT
        organization_id,
        COUNT(*) AS total_events,
        COUNT(DISTINCT DATE(timestamp)) AS active_days,

        MAX(CASE WHEN activity_name = 'Scheduling.Shift.Created' THEN 1 ELSE 0 END) AS created_shift,
        MAX(CASE WHEN activity_name = 'Scheduling.Shift.Approved' THEN 1 ELSE 0 END) AS approved_shift,
        MAX(CASE WHEN activity_name = 'Communication.Message.Created' THEN 1 ELSE 0 END) AS used_messaging

    FROM events
    GROUP BY organization_id
)

SELECT
    organization_id,
    CASE WHEN total_events >= 20 THEN 1 ELSE 0 END AS goal_high_engagement,
    CASE WHEN active_days >= 5 THEN 1 ELSE 0 END AS goal_consistent_usage,
    created_shift AS goal_used_scheduling,
    approved_shift AS goal_workflow_usage,
    used_messaging AS goal_collaboration
FROM base;
