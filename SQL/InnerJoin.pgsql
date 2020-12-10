-- Write a query to show all order items for
-- customer 3 and the corresponding product details for each.

SELECT  o.orderid, c.firstname, c.lastname, o.orderdate, i.productqty, p.productname
  FROM orderitem i
  JOIN orders o ON i.orderid = o.orderid
  JOIN customers c ON o.emailaddress = c.emailaddress
  JOIN product p ON i.productid = p.productid
  WHERE o.emailaddress = 'paulaCool@me.com'
  ORDER BY o.orderid ASC;