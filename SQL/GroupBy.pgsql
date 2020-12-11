-- Write a query to display the most recent order per product.

SELECT MAX(i.orderid) "Order ID", p.productname "Product Name", o.orderdate
  FROM product p
  JOIN orderitem i ON p.productid = i.productid
  JOIN orders o ON o.orderid = i.orderid
  GROUP BY p.productname, o.orderdate;

update orders
  SET orderdate = CURRENT_DATE
  where orderid = 6;

SELECT p.productname, MAX(o.orderdate)
  FROM product p
  JOIN orderitem i ON p.productid = i.productid
  JOIN orders o ON o.orderid = i.orderid
  GROUP BY p.productname;