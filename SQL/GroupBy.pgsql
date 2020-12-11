-- Write a query to display the most recent order per product.

SELECT MAX(i.orderid), p.productname, MAX(o.orderdate)
  FROM product p
  JOIN orderitem i ON p.productid = i.productid
  JOIN orders o ON o.orderid = i.orderid
  GROUP BY p.productname;