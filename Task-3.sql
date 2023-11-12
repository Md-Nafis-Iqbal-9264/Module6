SELECT 
    c.category_name, 
    SUM(oi.unit_price * oi.quantity) AS total_revenue
FROM 
    order_items oi
INNER JOIN 
    products p ON oi.product_id = p.product_id
INNER JOIN 
    categories c ON p.category_id = c.category_id
GROUP BY 
    c.category_name
ORDER BY 
    total_revenue DESC;
