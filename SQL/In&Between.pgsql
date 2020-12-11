-- Write a query to find orders greater than $10 and less than $100.

SELECT * FROM orders
  WHERE totalprice BETWEEN 10::money and 100::money;
  
-- I had to update OrderItemID 7 from the orderitem table because I put the wrong
-- product ID for the ordered item

UPDATE orderitem
	SET productid = '7c320598-d133-42f2-a2bf-1ad6a40b924b'
	where orderitemid = 7;

-- Write a query to find orders for product named 'Hair Dryer',
-- 'Keyboard' or 'MacBook'. Hint: use a sub-query and an IN clause.

SELECT * from orders
  WHERE orderid IN (
	SELECT orderid from orderitem
	  WHERE productid IN(
	  	SELECT productid from product where productname = 'Mac Mini'
	  )
  );