SELECT
    organization_id,
    goal_high_engagement,
    goal_consistent_usage,
    goal_used_scheduling,
    goal_workflow_usage,
    goal_collaboration,
    CASE 
        WHEN goal_high_engagement = 1
         AND goal_consistent_usage = 1
         AND goal_used_scheduling = 1
         AND goal_workflow_usage = 1
         AND goal_collaboration = 1
        THEN 1
        ELSE 0
    END AS is_activated
FROM trial_goals;

