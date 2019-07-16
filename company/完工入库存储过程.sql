
-- ----------------------------
-- Triggers structure for table MO_CompleteRpt
-- 完工入库触发器
-- select top 10  t.docno, DocState,WFCurrentState,t.StoreBaseUOM,t.CompleteQty,t.OperationState,t.* from  MO_CompleteRpt t where t.docno ='WG190710193';
 -- select top 10  t.id ,t.mo,t.docno,Item, itemversion,DocState,WFCurrentState,t.StoreBaseUOM,t.CompleteQty,t.OperationState,t.* from  MO_CompleteRpt t where t.docno ='WG190709087';
 
 -- 4 待审核
 -- 1 已核准
 -- 3 关闭
 

-- ----------------------------
if(OBJECT_ID('tri_MO_CompleteRpt') is not null)   
  drop trigger tri_MO_CompleteRpt
  go
 
CREATE TRIGGER [tri_MO_CompleteRpt]
ON [MO_CompleteRpt] 
FOR UPDATE
AS 
-- 物料ID
declare @itemId                  bigint 
-- 物料编号
declare @itemCode                varchar(32) 
-- 物料名称
declare @itemName                varchar(100) 
-- 供应商ID
declare @supplierId              bigint 
-- 供应商名称-全称
declare @supplierName            varchar (100)
-- 供应商简称
declare @supplierShortName            varchar(100) 
-- 供应商编号
declare @supplierCode            varchar(32)
-- 母阶ID
declare @parentItemId            bigint 
-- 母阶编码
declare @parentItemCode          varchar(32) 
-- 母阶名称
declare @parentItemName          varchar(100) 
-- 数量
declare @itemNum                 decimal(30,9) 
-- 单位ID
declare @itemUnitId              bigint 
-- 单位编号
declare @itemUnitCode            varchar(32) 
-- 单位名称
declare @itemUnitName            varchar(100) 

-- 销售部门
declare @saleDeptId              bigint 
-- 销售部门名称
declare @saledeptName            varchar(100) 
-- 销售部门编号
declare @saledeptCode            varchar(100) 

-- 仓库管理员ID
declare @whManId                 bigint 
-- 仓库管理员名称
declare @whManName               varchar(100) 
-- 仓库管理员编码
declare @whManCode               varchar(100) 

-- 料箱ID
declare @boxId                   bigint 
-- 料箱编码
declare @boxCode                 varchar(32) 
-- 库位
declare @positionId              bigint 
-- 库位编号
declare @positionCode            varchar(32)  
-- 插入系统时间
declare @insertTime              date 
-- 更新时间
declare @updateTime              date 
-- 数据来源 ERP 1 
declare @dataSource              int
-- 母阶2ID
declare @parentItemCode2         varchar(32)  
-- 母阶2编码
declare @parentItemId2           bigint 
-- 母阶2名称
declare @parentItemName2         varchar(100)  
-- 母阶3Id
declare @parentItemId3           bigint 
-- 母阶3编码
declare @parentItemCode3         varchar(32)  
-- 母阶3名称
declare @parenItemName3          varchar(100)  
-- 状态 1 正常 2 不正常
declare @status                  bigint 

declare @DOCSTATE              bigint

 

declare @OLD_STATUS              bigint

declare @shipId                bigint

-- 客户id
declare @custId                 bigint 
-- 客户名称
declare @custName               varchar(100) 
-- 客户编码
declare @custCode               varchar(100) 
-- 入库单据号
declare @DocNo               varchar(100) 
-- 完工入库id状态表主键
declare @CompleteRptId bigInt
 
 
begin 
   if(UPDATE(DocState) )
 
			select @status = DocState from inserted 
			-- 
			if (@status = 1) 
			begin 
				-- 开始获取数据插入到 临时表
				select @DocNo = docno,@CompleteRptId = id,@whManName =ApproveBy  from inserted
	 
				-- 料品数量
				select @itemId = Item ,@itemNum = CompleteQty,@itemUnitId = StoreBaseUOM from MO_CompleteRpt t where t.id = @CompleteRptId
				-- 料品编码
			-- --	select @itemCode = code from InvDoc_MiscRcvTransL t where t.id =  @itemId
					-- 料号名称
			 -- select @itemName= namecombinename from   CBO_ItemMaster_Trl   where ID = @itemId
				-- 销售部门
				-- select @saleDeptId = SaleDept,@custId = OrderBy_Customer from SM_Ship t where t.id = @shipId
				
				-- select @saleDeptId = id,@saledeptName = name  from CBO_Department_trl where id = @saleDeptId
				-- select @saledeptCode = code from CBO_Department where id = @saleDeptId				
	 
				-- 计价单位 编码
			select @itemUnitCode = code,@itemUnitName = shortName from Base_UOM t  where id = @itemUnitId
			-- 查询料号数据
			select @itemCode = t.code, @itemName = t.Name  from CBO_ItemMaster t where id =@itemId
 
 
			-- 收货客户	
		  -- select @custName = name from CBO_Customer_Trl t where t.id = @custId 
		  -- select @custCode = code  from CBO_Department t where t.id = @custId 
			
			-- 仓库管理员
			-- select @whManName = trl.name ,@whManCode = t.code  from CBO_Operators t ,CBO_Operators_Trl trl where t.id = trl.id and t.id = @whManId
			
			-- 母阶
			-- select @parentItemId = t.id  from CBO_BOMMaster t where t.ItemMaster = @itemId;
			-- select @parentItemCode  = cit.code ,@parentItemName  = t.namecombinename from CBO_ItemMaster_Trl t,CBO_ItemMaster cit  where t.id = cit.id and t.id = @parentItemId  
			
 
    begin 				
				 INSERT INTO wms_complete_in (
																				  doc_no,
																					item_id,
																					item_code,
																					item_name, 
																					item_num,
																					item_unit_id,
																					item_unit_code, 
																					wh_man_id,
																					wh_man_name,
																					wh_man_code,
																					box_id,
																					box_code,
																					position_id,
																					position_code,
																					insert_time,
																					update_time,
																					data_source ,
																					status
																					)
																VALUES
																	( 
																	  @DocNo,
																		@itemId ,
																		 @itemCode,
																		 @itemName , 
																		 @itemNum ,
																		 @itemUnitId ,
																		 @itemUnitCode  , 
																		 @whManId  ,
																		 @whManName  ,
																		 @whManCode,
																		 @boxId ,
																		 @boxCode ,
																		 @positionId ,
																		 @positionCode  ,
																		 CONVERT(varchar,GETDATE(),120),
																		 CONVERT(varchar,GETDATE(),120),
																		 1 ,
																		 1
																	)
			 
		 end
					
					
				
  end
		
end
GO

 