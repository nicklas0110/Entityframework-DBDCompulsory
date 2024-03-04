-- rollback_initial_schema.sql

USE master;
GO

-- Drop the database if it exists
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'StoreCompDB')
    DROP DATABASE StoreCompDB;
GO
