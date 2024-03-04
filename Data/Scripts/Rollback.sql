DROP TABLE Products;
GO

DROP TABLE Categories;
ALTER TABLE Products DROP COLUMN category_id;
GO

DROP TABLE ProductRatings;
GO