-- I was getting error messages trying to delete the existing customers since all 3 are linked to orders.
-- So I added a new customer, then deleted that record

INSERT INTO customer
  (emailaddress, firstname, lastname, birthdate)
VALUES
('josephine@rr.co.au', 'Josephine', 'Pottner', '1990-11-20');

DELETE from customer
  where emailaddress = 'josephine@rr.co.au';