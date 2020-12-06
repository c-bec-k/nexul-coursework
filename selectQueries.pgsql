-- Write a query to select all Customers with your firstName, include all but one column in the result.

SELECT firstname, lastname, emailaddress FROM customer
  where firstname = 'Paula';

-- Write a query to find Customers with "Lear" anywhere in their lastName, include all columns in the result.

SELECT * from customer
  where lastname LIKE '%Lear%';

-- Write a query to find everyone that is 25 years or older in age. Include only their first name and birth date.

SELECT firstname, birthdate from customer
  where AGE(CURRENT_DATE, birthdate) > '25 years';

-- Write a query to search for people with an age older than 25 AND younger than 45.

SELECT * from customer
  where AGE(CURRENT_DATE, birthdate) > '25 years' AND AGE(CURRENT_DATE, birthdate) < '45 years';