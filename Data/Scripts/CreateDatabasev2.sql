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