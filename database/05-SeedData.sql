/*
 * Data Quality Monitoring ETL
 * Sample Data
 * SQL Server 2008/2012
 */

USE QualityETL;
GO

-- Insert sample records
INSERT INTO dbo.MainRecords (RecordCode, RecordName, Description, CreatedBy)
VALUES
('REC001', 'Sample Record 1', 'First sample record for Data-Quality-Monitoring-ETL', 'admin'),
('REC002', 'Sample Record 2', 'Second sample record for Data-Quality-Monitoring-ETL', 'admin'),
('REC003', 'Sample Record 3', 'Third sample record for Data-Quality-Monitoring-ETL', 'admin');

PRINT 'Sample data inserted successfully';
PRINT 'Total records: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
GO
