CREATE TABLE Customers (
CustumerID int NOT NULL,
Name varchar (200) NOT NULL,
Address varchar (200) NOT NULL,
City varchar (200) NOT NULL,
Region varchar (200) NOT NULL,
PostalCode int NOT NULL,
Country varchar (200) NOT NULL,
SendEmail varchar (200) NOT NULL,
Saluation varchar (200) NOT NULL,
EmailAddress varchar (200) NOT NULL,
PRIMARY KEY (CustormerID) NOT NULL,
)
CREATE TABLE Orders(
OrderID int FOREIGN KEY REFERENCES OrderDetails(OrderID) NOT NULL,
SalesPerson varchar (200) NOT NULL,
OrderDate varchar (200) NOT NULL,
CustomerID int FOREIGN KEY REFERENCES Customers(CustomerID) NOT NULL,
ShipName varchar (200) NOT NULL,
ShipAddress varchar (200) NOT NULL,
ShipCity varchar (200) NOT NULL,
ShipRegion varchar (200) NOT NULL,
ShipPostalCode int NOT NULL,
ShipCountry varchar (200) NOT NULL,
PRIMARY KEY (OrderID) NOT NULL,
)
CREATE TABLE OrderDetails (
OrderID int NOT NULL,
ProductID int FOREIGN KEY REFERENCES Products(ProductsID),
UnitPrice int NOT NULL,
Quantity int NOT NULL,
PRIMARY KEY(OrderID) NOT NULL,
PRIMARY KEY(ProductID) NOT NULL,
)
CREATE TABLE Products (
ProductID int NOT NULL,
ProductName varchar (200) NOT NULL,
UnitPrice int NOT NULL,
UnitsStock int NOT NULL,
UnitsOnOrder int NOT NULL,
QuantityPerUnit int NOT NULL,
SupplierID int FOREIGN KEY REFERENCES Suppliers(SuppliersID),
PRIMARY KEY (ProductID),
)
CREATE TABLE Suppliers (
SupplierID int NOT NULL,
CompanyName varchar (200) NOT NULL,
ContactName varchar (200) NOT NULL,
Address varchar (200) NOT NULL,
City varchar (200) NOT NULL,
Region varchar (200) NOT NULL,
PostalCode int NOT NULL,
Country varchar (200) NULL,
Phone int NOT NULL,
PRIMARY KEY (SupplierID) NOT NULL,
)