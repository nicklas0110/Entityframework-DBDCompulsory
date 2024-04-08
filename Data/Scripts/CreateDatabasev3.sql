CREATE TABLE ProductRatings (
    RatingId INT PRIMARY KEY,
    ProductId INT,
    Rating INT,
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);
GO
