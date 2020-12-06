-- Write a query to return orders over $100 and round the order totals to the nearest 10 cents.

SELECT round(totalprice, 1), orderid, emailaddress, orderdate from orders
  WHERE totalPrice > 100;

-- Write a query to return orders and the average cost per item in each order. Hint: use division.

SELECT round(totalprice / itemcount, 2) AS avgPrice, orderid, emailaddress, orderdate, itemcount from orders
  ORDER BY itemcount;