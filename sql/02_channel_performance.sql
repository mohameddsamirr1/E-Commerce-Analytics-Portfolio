-- Channel Performance

SELECT
    o.channel,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price - oi.discount_amount)
        AS net_revenue,
    SUM(oi.quantity) AS total_units_sold,
    ROUND(
        1.0 * SUM(
            oi.quantity * oi.unit_price - oi.discount_amount
        ) / NULLIF(COUNT(DISTINCT o.order_id), 0),
        2
    ) AS aov
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.status = 'delivered'
GROUP BY o.channel
ORDER BY net_revenue DESC;