-- rollback_add_categories.sql

-- Drop foreign key constraint
ALTER TABLE Products
    DROP CONSTRAINT FK_Products_Categories;
GO

-- Drop the added column
ALTER TABLE Products
    DROP COLUMN category_id;
GO

-- Drop the Categories table
DROP TABLE Categories;
GO
