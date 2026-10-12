-- Product Profitability

SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.unit_price - oi.discount_amount)
        AS net_revenue,
    SUM(oi.quantity * p.unit_cost) AS total_cost,
    SUM(
        oi.quantity * oi.unit_price - oi.discount_amount
    ) - SUM(oi.quantity * p.unit_cost) AS net_profit,
    ROUND(
        100.0 * (
            SUM(oi.quantity * oi.unit_price - oi.discount_amount)
            - SUM(oi.quantity * p.unit_cost)
        ) / NULLIF(
            SUM(oi.quantity * oi.unit_price - oi.discount_amount),
            0
        ),
        2
    ) AS profit_margin
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
WHERE o.status = 'delivered'
GROUP BY p.product_id, p.product_name
ORDER BY net_profit DESC;