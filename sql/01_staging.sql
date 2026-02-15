-- Staging Layer Example

CREATE OR REPLACE TABLE staging_transactions AS
SELECT
    transaction_id,
    customer_id,
    transaction_date,
    amount,
    status
FROM raw_transactions
WHERE transaction_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 90 DAY);
