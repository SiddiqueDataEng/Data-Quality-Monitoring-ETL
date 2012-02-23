/*
 * Data Quality Monitoring ETL
 * Project #85 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSIS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'QualityETL')
BEGIN
    ALTER DATABASE QualityETL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE QualityETL;
END
GO

CREATE DATABASE QualityETL
ON PRIMARY
(
    NAME = 'QualityETL_Data',
    FILENAME = 'C:\SQLData\QualityETL_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'QualityETL_Log',
    FILENAME = 'C:\SQLData\QualityETL_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE QualityETL SET RECOVERY SIMPLE;
ALTER DATABASE QualityETL SET AUTO_UPDATE_STATISTICS ON;
GO

USE QualityETL;
GO

PRINT 'Database QualityETL created successfully';
PRINT 'Project: Data Quality Monitoring ETL';
PRINT 'Description: Anomaly and missing data flagging';
GO
