create PROCEDURE [dbo].[PackageTypes_id]
(@V_StockItemName Varchar(100))

as
begin

select 
StockItemID ,
last_update
from 
Warehouse.StockItems
where 
StockItemName=@V_StockItemName
end


create PROCEDURE [dbo].[StockItems_insert]
(

@V_StockItem_name varchar(100),
@V_Supplier_name varchar(50),
@V_color_name varchar(50),
@V_Unit_package_name varchar(50) ,
@V_OuterPackage_name varchar(50),
@V_Brand nvarchar(50),
@V_Size nvarchar(50),
@V_LeadTimeDays int,
@V_QuantityPerOuter int,
@V_IsChillerStock bit,
@V_Barcode nvarchar(50),
@V_TaxRate decimal(18),
@V_UnitPrice decimal(18),
@V_RecommendedRetailPrice decimal(18,2),
@V_TypicalWeightPerUnit decimal(18,2),
@V_MarketingComments nvarchar(50),
@V_InternalComments nvarchar(50),
@V_Photo varbinary(max),
@V_CustomFields nvarchar(50),


@V_Last_edited_BY int

)
as
begin
declare @V_Supplier_id int
declare @V_color_id int
declare @V_Unit_package_id int
declare @V_OuterPackage_id int
select
@V_Supplier_id=SupplierID
from
Purchasing.Suppliers
where
SupplierName=@V_Supplier_name
select
@V_color_id=ColorID
from
Warehouse.Colors
where
ColorName=@V_color_name
select
@V_color_id=ColorID
from
Warehouse.Colors
where
ColorName=@V_color_name
select
@V_Unit_package_id=PackageTypeID
from
Warehouse.PackageTypes
where
PackageTypeName=@V_Unit_package_name
select
@V_OuterPackage_id=PackageTypeID
from
Warehouse.PackageTypes
where
PackageTypeName=@V_OuterPackage_name


insert into Warehouse.StockItems
(

StockItemName,
SupplierID,
ColorID,
UnitPackageID,
OuterPackageID,
Brand,
Size,
LeadTimeDays,
QuantityPerOuter,
IsChillerStock,
Barcode,
TaxRate,
UnitPrice,
RecommendedRetailPrice,
TypicalWeightPerUnit,
MarketingComments,
InternalComments,
Photo,
CustomFields,


LastEditedBy)


values


(

@V_StockItem_name,
@V_Supplier_id ,
@V_color_id ,
@V_Unit_package_id ,
@V_OuterPackage_id ,
@V_Brand ,
@V_Size ,
@V_LeadTimeDays ,
@V_QuantityPerOuter ,
@V_IsChillerStock ,
@V_Barcode ,
@V_TaxRate ,
@V_UnitPrice ,
@V_RecommendedRetailPrice ,
@V_TypicalWeightPerUnit,
@V_MarketingComments ,
@V_InternalComments ,
@V_Photo ,
@V_CustomFields ,


@V_Last_edited_BY

)
End



Create PROCEDURE [dbo].[StockItems_update]
(
@V_Stock_item_id int,
@V_StockItem_name varchar(100),
@V_Supplier_name varchar(50),
@V_color_name varchar(50),
@V_Unit_package_name varchar(50) ,
@V_OuterPackage_name varchar(50),
@V_Brand nvarchar(50),
@V_Size nvarchar(50),
@V_LeadTimeDays int,
@V_QuantityPerOuter int,
@V_IsChillerStock bit,
@V_Barcode nvarchar(50),
@V_TaxRate decimal(18),
@V_UnitPrice decimal(18),
@V_RecommendedRetailPrice decimal(18,2),
@V_TypicalWeightPerUnit decimal(18,2),
@V_MarketingComments nvarchar(50),
@V_InternalComments nvarchar(50),
@V_Photo varbinary(max),
@V_CustomFields nvarchar(50),


@V_Last_edited_BY int

)
as
begin
declare @V_Supplier_id int
declare @V_color_id int
declare @V_Unit_package_id int
declare @V_OuterPackage_id int
select
@V_Supplier_id=SupplierID
from
Purchasing.Suppliers
where
SupplierName=@V_Supplier_name
select
@V_color_id=ColorID
from
Warehouse.Colors
where
ColorName=@V_color_name
select
@V_color_id=ColorID
from
Warehouse.Colors
where
ColorName=@V_color_name
select
@V_Unit_package_id=PackageTypeID
from
Warehouse.PackageTypes
where
PackageTypeName=@V_Unit_package_name
select
@V_OuterPackage_id=PackageTypeID
from
Warehouse.PackageTypes
where
PackageTypeName=@V_OuterPackage_name




update Warehouse.StockItems
set
StockItemName=@V_StockItem_name,
SupplierID=@V_Supplier_id ,
ColorID=@V_color_id,
UnitPackageID=@V_Unit_package_id ,
OuterPackageID=@V_OuterPackage_id ,
Brand=@V_Brand,
Size=@V_Size,
LeadTimeDays=@V_LeadTimeDays,
QuantityPerOuter=@V_QuantityPerOuter,
IsChillerStock=@V_IsChillerStock,
Barcode=@V_Barcode ,
TaxRate=@V_TaxRate,
UnitPrice=@V_UnitPrice,
RecommendedRetailPrice=@V_RecommendedRetailPrice ,
TypicalWeightPerUnit=@V_TypicalWeightPerUnit,
MarketingComments=@V_MarketingComments,
InternalComments=@V_InternalComments,
Photo=@V_Photo,
CustomFields=@V_CustomFields,

LastEditedBy=@V_Last_edited_BY
where
StockItemID=@V_Stock_item_id
End





create PROCEDURE [dbo].[StockItems_delete]
(
@V_Stock_item_id int
)
as
begin
delete from Warehouse.StockItems
where StockItemID=@V_Stock_item_id
end