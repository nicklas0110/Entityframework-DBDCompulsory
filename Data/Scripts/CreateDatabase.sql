CREATE DATABASE StoreCompDB;
GO

USE StoreCompDB;
GO

CREATE TABLE Products (
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(10, 2)
);
GO

CREATE TABLE Categories (
                            CategoryId INT PRIMARY KEY,
                            CategoryName VARCHAR(255)
);
GO

ALTER TABLE Products
    ADD category_id INT;

ALTER TABLE Products
    ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (category_id) REFERENCES Categories(CategoryId);
GO