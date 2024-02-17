SELECT customers.customer_name AS "Customer"
    PRINTF("$%.2f",SUM(subscriptions.price_per_month * subscriptions.subscription_length)) 
FROM customers
JOIN orders
    ON orders.subscription_ID = subscriptions.subscription_id
WHERE Orders.order_status = "unpaid"
    AND Subscriptions.description = 'Fashion Magazine'
    ORDER BY Customer;