-- Warehouse Model Example

CREATE OR REPLACE TABLE fact_customer_activity AS
SELECT
    customer_id,
    DATE(transaction_date) as activity_date,
    SUM(amount) as total_spend,
    COUNT(transaction_id) as transaction_count
FROM staging_transactions
GROUP BY customer_id, DATE(transaction_date);
