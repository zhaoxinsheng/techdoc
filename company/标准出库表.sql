/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.188.19-erp-测试环境
 Source Server Type    : SQL Server
 Source Server Version : 11003156
 Source Host           : 192.168.188.19:1433
 Source Catalog        : COWAIN05
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11003156
 File Encoding         : 65001

 Date: 08/07/2019 15:20:55
*/


-- ----------------------------
-- Table structure for wms_storage_out
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wms_storage_out]') AND type IN ('U'))
	DROP TABLE [dbo].[wms_storage_out]
GO

CREATE TABLE [dbo].[wms_storage_out] (
  [id] bigint  NOT NULL,
  [doc_no] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_id] bigint  NULL,
  [item_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sale_dept_id] bigint  NULL,
  [sale_dept_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sale_dept_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_id] bigint  NULL,
  [parent_item_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_num] int  NULL,
  [item_unit_id] bigint  NULL,
  [item_unit_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cust_id] bigint  NULL,
  [cust_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [cust_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wh_man_id] bigint  NULL,
  [wh_man_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [wh_man_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [box_id] bigint  NULL,
  [box_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [position_id] bigint  NULL,
  [position_code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [insert_time] datetime2(6)  NULL,
  [update_time] datetime2(6)  NULL,
  [data_source] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_id2] bigint  NULL,
  [parent_item_code2] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_name2] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_id3] bigint  NULL,
  [parent_item_code3] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_name3] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] int  NULL
)
GO

ALTER TABLE [dbo].[wms_storage_out] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'单据号',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'doc_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'item_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'item_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'item_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'销售部门',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'sale_dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'销售部门名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'sale_dept_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'销售部门编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'sale_dept_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶编号',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号数量',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'item_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号单位',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'item_unit_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'item_unit_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'客户id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'cust_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'客户名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'cust_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'客户编号',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'cust_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'wh_man_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'wh_man_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'wh_man_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓位',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'box_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓位编号',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'box_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'position_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位编号',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'position_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'插入时间',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'insert_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据来源',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'data_source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶2id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_id2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶2编号',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_code2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶2名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_name2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶3id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_id3'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶3编号',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_code3'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父阶2名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'parent_item_name3'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_out',
'COLUMN', N'status'
GO


-- ----------------------------
-- Primary Key structure for table wms_storage_out
-- ----------------------------
ALTER TABLE [dbo].[wms_storage_out] ADD CONSTRAINT [PK__wms_stor__3213E83F056BCF54] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

