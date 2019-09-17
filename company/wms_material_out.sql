/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.188.19-erp-测试环境
 Source Server Type    : SQL Server
 Source Server Version : 11003156
 Source Host           : 192.168.188.19:1433
 Source Catalog        : COWAIN0711
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11003156
 File Encoding         : 65001

 Date: 11/09/2019 19:01:02
*/


-- ----------------------------
-- Table structure for wms_material_out
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wms_material_out]') AND type IN ('U'))
	DROP TABLE [dbo].[wms_material_out]
GO

CREATE TABLE [dbo].[wms_material_out] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [doc_no] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_id] bigint  NULL,
  [item_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_unit_id] bigint  NULL,
  [item_unit_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wh_man_id] bigint  NULL,
  [wh_man_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wh_man_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [box_id] bigint  NULL,
  [box_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [position_id] bigint  NULL,
  [position_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [insert_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [data_source] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] int  NULL,
  [item_num] int  NULL,
  [item_spec] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_desc] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[wms_material_out] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'出库单据号码',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'doc_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号id',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号单位id',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_unit_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号单位编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_unit_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员id',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'wh_man_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'wh_man_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'wh_man_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓位编号id',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'box_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓位id',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'box_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位id',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'position_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'position_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'插入时间',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'insert_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据来源',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'data_source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号数量',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'规格',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_spec'
GO

EXEC sp_addextendedproperty
'MS_Description', N'描述',
'SCHEMA', N'dbo',
'TABLE', N'wms_material_out',
'COLUMN', N'item_desc'
GO


-- ----------------------------
-- Primary Key structure for table wms_material_out
-- ----------------------------
ALTER TABLE [dbo].[wms_material_out] ADD CONSTRAINT [PK__wms_mate__3213E83F5D3EB863] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

