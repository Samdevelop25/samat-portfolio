-- KPI Layer

CREATE OR REPLACE TABLE churn_metrics AS
SELECT
    customer_id,
    CASE 
        WHEN MAX(activity_date) < DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY)
        THEN 1 ELSE 0
    END AS churn_flag
FROM fact_customer_activity
GROUP BY customer_id;
