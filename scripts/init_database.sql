/*
==========================================
Create Database and Schemas
==========================================
Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If teh data base exists, it is dropped and recreated. Addictionally, the script sets up three schemas
	within the database: 'bronze', 'silver', and 'gold'

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted. proceed with coution
	and ensure you have proper backups before running this script.

*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DateWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Crate the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold ;
GO
