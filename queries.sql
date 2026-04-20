#no. of customers
select count(customer_id) as no_of_cust from customer;

#no. of suppliers
select count(supplier_id) as no_of_supp from supplier;

#no. of orders and the quatity of each product
SELECT
    c.customer_name,  
    c.location,        
    (SELECT COUNT(*)
     FROM orders o
     WHERE o.cust_id = c.customer_id) AS total_orders, 
    (SELECT sum(p.quantity)
     FROM orders o
     JOIN product p ON o.prod_id = p.product_id
     WHERE o.cust_id = c.customer_id) AS total_no_of_products_ordered  
FROM
    customer c 
WHERE c.customer_id IN (SELECT cust_id FROM orders);

#no. of orders
select count(*) as total_no_of_orders
from customer c inner join orders o
on c.customer_id = o.cust_id;