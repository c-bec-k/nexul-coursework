create table [Customer] (
  emailAddress VARCHAR(100) PRIMARY KEY not null,
  firstName VARCHAR(15) not NULL,
  lastName VARCHAR(15) not NULL,
  birthdate DATE not null
);

create table [Order] (
  OrderId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
  CustomerId varchar(100) FOREIGN KEY REFERENCES [Customer](emailAddress),
  OrderDate datetimeoffset DEFAULT GETDATE(),
  TotalPrice decimal NOT NULL,
  ItemCount int NOT NULL,
  OrderStatus varchar(20) DEFAULT ('placed'),
  AffiliateId int
);

create table [Product] (
  productId UNIQUEIDENTIFIER PRIMARY KEY not null DEFAULT NEWID(),
  productName text not null,
  productPrice SMALLMONEY not null
);

create table [OrderItem] (
  orderItemId int not null IDENTITY(1,1) PRIMARY KEY,
  [order] int not null FOREIGN KEY REFERENCES [Order](orderId),
  productOrdered UNIQUEIDENTIFIER FOREIGN KEY REFERENCES [Product](productId),
  productQty int not null,
  productTtl SMALLMONEY not null
);