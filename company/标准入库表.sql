-- ----------------------------
-- Table structure for wms_storage_record
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[wms_storage_record]') AND type IN ('U'))
	DROP TABLE [dbo].[wms_storage_record]
GO

CREATE TABLE [dbo].[wms_storage_record] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [item_id] bigint  NULL,
  [item_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [supplier_id] bigint  NULL,
  [supplier_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [supplier_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_id] bigint  NULL,
  [parent_item_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [item_num] decimal(30,9)  NULL,
  [item_unit_id] bigint  NULL,
  [item_unit_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [recv_dept_id] bigint  NULL,
  [recv_dept_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [wh_man_id] bigint  NULL,
  [wh_man_name] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [box_id] bigint  NULL,
  [box_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [position_id] bigint  NULL,
  [position_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [insert_time] datetime2(7)  NULL,
  [update_time] datetime2(7)  NULL,
  [data_source] int  NULL,
  [parent_item_id2] bigint  NULL,
  [parent_item_code2] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_name2] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_id3] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_code3] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [parent_item_name3] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] bigint  NULL,
  [recv_dept_code] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [wh_man_code] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [supplier_short_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [doc_type] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
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

EXEC sp_addextendedproperty
'MS_Description', N'料号id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'item_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'item_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'item_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'供应商id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'supplier_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'供应商名字',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'supplier_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'供应商编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'supplier_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数量',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'item_num'
GO

EXEC sp_addextendedproperty
'MS_Description', N'单位id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'item_unit_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'单位编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'item_unit_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收部门',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'recv_dept_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收部门名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'recv_dept_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员id',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'wh_man_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'wh_man_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料箱id--先做冗余处理',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'box_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'料箱code',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'box_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位id--先做冗余处理',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'position_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'库位code',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'position_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'插入时间',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'insert_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据来源 1 erp 2 pad 3MES 4 APS',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'data_source'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号id - 第二母阶',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_id2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号code - 第二母阶',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_code2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号name - 第二母阶',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_name2'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号id - 第三母阶',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_id3'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号code - 第二母阶',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_code3'
GO

EXEC sp_addextendedproperty
'MS_Description', N'母阶料号名称 - 第二母阶',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'parent_item_name3'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态 1 正常 2.不正常 3.正在同步 4 已经同步',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收机构编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'recv_dept_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'仓库管理员编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'wh_man_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'供应商短名称',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'supplier_short_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'收货类型',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'COLUMN', N'doc_type'
GO


-- ----------------------------
-- Indexes structure for table wms_storage_record
-- ----------------------------
CREATE NONCLUSTERED INDEX [index_item_code]
ON [dbo].[wms_storage_record] (
  [item_code] ASC
)
GO

EXEC sp_addextendedproperty
'MS_Description', N'料号编码',
'SCHEMA', N'dbo',
'TABLE', N'wms_storage_record',
'INDEX', N'index_item_code'
GO


-- ----------------------------
-- Primary Key structure for table wms_storage_record
-- ----------------------------
ALTER TABLE [dbo].[wms_storage_record] ADD CONSTRAINT [PK__wms_stor__3213E83F03E48C66] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

