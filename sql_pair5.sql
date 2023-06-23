SELECT employee_id , last_name , first_name
	FROM employees;

SELECT *
	FROM products
    WHERE (unit_price <5);
    
    SELECT *
    FROM products
    WHERE (unit_price = 18) OR 
    (unit_price = 19) OR 
    (unit_price = 20);
    
    SELECT *
    FROM products
    WHERE (unit_price >= 15) AND
    (unit_price <= 50);
    
    SELECT *
    FROM products
    WHERE unit_price IS NULL;
    
    SELECT *
		FROM products
        WHERE (unit_price <15 AND product_id <10);
        
	SELECT *
		FROM products
        WHERE (unit_price >15 AND product_id >10);
        
	SELECT ship_country
		FROM orders 


 USE Northwind;
	
SELECT `product_id`, `product_name`, `unit_price`
	FROM `products`
    LIMIT 10;
    
SELECT `product_id`, `product_name`, `unit_price`
	FROM `products`
    ORDER BY `product_id` DESC
    LIMIT 10;
   
SELECT DISTINCT `order_id`
	 FROM `order_details`;
    
SELECT DISTINCT `order_id` 
	FROM `order_details`
    LIMIT 2;
    
SELECT `order_id`, (`unit_price` * `quantity`) AS `ImporteTotal`
	FROM `order_details`
    ORDER BY `ImporteTotal` DESC
    LIMIT 3;
    
SELECT DISTINCT`order_id`, (`unit_price` * `quantity`) AS `ImporteTotal`
	FROM `order_details`
    ORDER BY `ImporteTotal` DESC
    LIMIT 5 OFFSET 5;
    
SELECT `category_name` AS `NombreDeCategoria`
	FROM `categories`
    ORDER BY `NombreDeCategoria`;

SELECT DATE_ADD(`shipped_date`, INTERVAL 5 DAY) AS `FechaRetrasada`
	FROM `orders`;
        
SELECT `product_id`, `unit_price`
	FROM `products`
    WHERE `product_id` BETWEEN  15 AND 50;

SELECT `unit_price`
	FROM `products`
    WHERE `unit_price` IN (18, 19, 20);















