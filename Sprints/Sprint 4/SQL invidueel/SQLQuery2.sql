CREATE TABLE Customers (
	CustomerID int NOT NULL,
	Name varchar (200) NOT NULL,
	Address varchar (200) NOT NULL,
	City varchar (200) NOT NULL,
	Region varchar (200) NOT NULL,
	PostalCode int NOT NULL,
	Country varchar (200) NOT NULL,
	SendEmail varchar (200) NOT NULL,
	Saluation varchar (200) NOT NULL,
	EmailAddress varchar (200) NOT NULL,
	PRIMARY KEY (CustomerID),
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
	PRIMARY KEY (SupplierID),
)
CREATE TABLE Products (
	ProductID int NOT NULL,
	ProductName varchar (200) NOT NULL,
	UnitPrice int NOT NULL,
	UnitsStock int NOT NULL,
	UnitsOnOrder int NOT NULL,
	QuantityPerUnit int NOT NULL,
	SupplierID int FOREIGN KEY REFERENCES Suppliers(SupplierID),
	PRIMARY KEY (ProductID),
)

CREATE TABLE Orders(
	OrderID int ,
	SalesPerson varchar (200) NOT NULL,
	OrderDate varchar (200) NOT NULL,
	CustomerID int FOREIGN KEY REFERENCES Customers(CustomerID),
	ShipName varchar (200) NOT NULL,
	ShipAddress varchar (200) NOT NULL,
	ShipCity varchar (200) NOT NULL,
	ShipRegion varchar (200) NOT NULL,
	ShipPostalCode int NOT NULL,
	ShipCountry varchar (200) NOT NULL,
	PRIMARY KEY (OrderID) ,
)
CREATE TABLE OrderDetails (
	OrderID int FOREIGN KEY REFERENCES Orders(OrderID),
	ProductID int FOREIGN KEY REFERENCES Products(ProductID),
	UnitPrice int NOT NULL,
	Quantity int NOT NULL,
	PRIMARY KEY(OrderID,ProductID),
)
