-- Returns Analysis -- 
-- FINAL QUERY 4: Returns Analysis
--  Analyze return reasons, refunds, and restocking outcomes.


SELECT
    r.reason,
    COUNT(DISTINCT r.return_id) AS total_return_records,
    SUM(r.refund_amount) AS total_refund_amount,
    ROUND(AVG(r.refund_amount), 2) AS avg_refund_amount,
    SUM(
        CASE
            WHEN r.restocked = TRUE THEN 1
            ELSE 0
        END
    ) AS restocked_records,
    SUM(
        CASE
            WHEN r.restocked = FALSE THEN 1
            ELSE 0
        END
    ) AS not_restocked_records
FROM returns r
GROUP BY r.reason
ORDER BY total_return_records DESC;