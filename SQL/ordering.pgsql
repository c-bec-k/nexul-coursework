-- Write a query to retrieve all orders by total with the highest price first.

SELECT * from orders
  ORDER BY totalprice DESC;

-- Write a query to retrieve all products, ordered alphabetically.

SELECT * from product
  ORDER BY productname ASC;

-- Write a query to retrieve orders over $10 with the least number of items first.

SELECT * from orders
  WHERE totalprice > 100
  ORDER BY itemcount ASC;