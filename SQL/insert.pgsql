INSERT INTO customer
  (emailaddress, firstname, lastname, birthdate)
VALUES
  ('j.oleary@email.me', 'John', $$O'Leary$$, '1980-02-28'),
  ('k.lear@mail.you', 'King', 'Lear', '1605-05-22'),
  ('paulaCool@me.com', 'Paula', 'Barnette', '1992-05-09');

INSERT INTO product
  (productname, productprice)
VALUES
  ('Mac Mini', 699.99),
  ('Lightning adaptor', 19.99),
  ('Magic Mouse', 99.99);
  
INSERT INTO orders
(emailaddress, totalprice, itemcount, affiliateid)
VALUES
  ('k.lear@mail.you', 119.98, 2, 42),
  ('j.oleary@email.me', 699.99, 1, null),
  ('paulaCool@me.com', 79.96, 4, 42);

INSERT INTO orderitem
(orderId, productid, productqty, producttl)
VALUES
  (1, 'e962df0f-b056-4bf6-b903-62634885c4ce', 1, 19.99),
  (1, '3a1a583b-8f27-4c78-b7ea-da6200a9e605', 1, 99.99),
  (2, '3a1a583b-8f27-4c78-b7ea-da6200a9e605', 1, 699.99),
  (3, 'e962df0f-b056-4bf6-b903-62634885c4ce', 4, 79.96);