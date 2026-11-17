-- Create database if it does not already exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'pmsdb')
BEGIN
    CREATE DATABASE [pmsdb];
END
GO

USE [pmsdb];
GO

-- Create products table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'products' AND schema_id = SCHEMA_ID('dbo'))
BEGIN
    CREATE TABLE [dbo].[products] (
        [Id]          INT           IDENTITY (1, 1) NOT NULL,
        [Title]       VARCHAR (50)  NOT NULL,
        [description] VARCHAR (50)  NOT NULL,
        [image]       VARCHAR (255) NOT NULL,
        [price]       INT           NOT NULL,
        [quantity]    INT           NOT NULL,
        [status]      VARCHAR (150) NOT NULL,
        PRIMARY KEY CLUSTERED ([Id] ASC)
    );
END
GO

-- Sample insert (optional)
-- INSERT INTO [dbo].[products] ([Title], [description], [image], [price], [quantity], [status])
-- VALUES ('Wireless Mouse', 'Ergonomic optical wireless mouse', 'https://via.placeholder.com/150', 25, 100, 'Active');
