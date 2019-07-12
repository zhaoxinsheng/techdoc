/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.188.19-erp
 Source Server Type    : SQL Server
 Source Server Version : 11003156
 Source Host           : 192.168.188.19:1433
 Source Catalog        : COWAIN05
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11003156
 File Encoding         : 65001

 Date: 26/06/2019 15:45:47
*/


-- ----------------------------
-- Table structure for wms_storage_record
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wms_storage_record]') AND type IN ('U'))
	DROP TABLE [dbo].[wms_storage_record]
GO

CREATE TABLE [dbo].[wms_storage_record] (
  [id] nvarchar(32) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[wms_storage_record] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'id'
GO


-- ----------------------------
-- Primary Key structure for table wms_storage_record
-- ----------------------------
ALTER TABLE [dbo].[wms_storage_record] ADD CONSTRAINT [PK__wms_stor__3213E83F03E48C66] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

