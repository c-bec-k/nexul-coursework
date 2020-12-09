-- Added a total price column that uses `money`
ALTER TABLE orders
  ADD COLUMN ttlPrice money;
 
-- Set the new `money` data type to be equal to the `number` data type
UPDATE orders
  set ttlprice = totalprice;

-- Remove the `number` data type column
ALTER TABLE orders
  DROP COLUMN totalprice;
 
-- Re-named the new col to the old col name
ALTER TABLE orders
  RENAME COLUMN ttlprice to totalprice;