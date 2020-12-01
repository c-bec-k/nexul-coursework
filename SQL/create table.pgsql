CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table Customer (
  emailAddress VARCHAR(100) PRIMARY KEY not null,
  firstName VARCHAR(15) not NULL,
  lastName VARCHAR(15) not NULL,
  birthdate DATE not null
);

create table Orders (
  OrderId SERIAL PRIMARY KEY,
  emailAddress varchar(100) REFERENCES Customer (emailAddress),
  OrderDate date DEFAULT CURRENT_TIMESTAMP,
  TotalPrice decimal NOT NULL,
  ItemCount int NOT NULL,
  OrderStatus varchar(20) DEFAULT ('placed'),
  AffiliateId int
);

create table Product (
  productId UUID PRIMARY KEY not null DEFAULT uuid_generate_v4(),
  productName text not null,
  productPrice money not null
);

create table OrderItem (
  orderItemId SERIAL PRIMARY KEY,
  orderId int not null REFERENCES Orders (orderId),
  productId UUID REFERENCES Product (productId),
  productQty int not null,
  productTtl money not null
);