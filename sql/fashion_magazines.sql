SELECT customers.customer_name AS 'Customer',
    PRINTF("$%.2f", SUM(subscriptions.price_per_month * subscriptions.subscription_length)) AS 'Amount Due'
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
JOIN subscriptions
    ON orders.subscription_ID = subscriptions.subscription_id
WHERE Orders.order_status = "unpaid"
    AND subscriptions.description = 'Fashion Magazine'
    ORDER BY Customer;