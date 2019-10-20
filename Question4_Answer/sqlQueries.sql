SELECT name FROM interview.stores where allowed_alcohol = true;


SELECT products.name from interview.products INNER JOIN interview.store_prices
ON products.id = interview.store_prices.product_id WHERE interview.store_prices.store_id=1
 ORDER BY interview.store_prices.price DESC LIMIT 2;


SELECT name FROM interview.products
WHERE id NOT IN (SELECT product_id FROM interview.store_prices WHERE store_id=2);


select p.name from interview.products p
where p.id = (select ol.product_id from interview.order_lines ol 
where ol.qty = (select max(ol.qty) from interview.order_lines ol));


UPDATE interview.order_lines SET line_total = 100 WHERE line_total IS NULL; 



SELECT * FROM interview.order_lines; 



