--Simulación de conflicto de concurrecia
--segundo Usuario
use WideWorldImportersv2
declare 
@V_Stock_id int,
@v_StockItem_name varchar(50) = 'perro', 
	@V_RecommendedRetailPricee decimal = 320,
	@v_last_update timestamp 

	DECLARE	@return_value int

EXEC	@return_value = [dbo].[PackageTypes_id]
		@V_StockItemName = @v_StockItem_name


		Select
			@V_Stock_id=StockItemID,
			@v_last_update = last_update
	FROM
			Warehouse.StockItems
	Where 
		StockItemName=@v_StockItem_name




DECLARE	@return_value1 int

EXEC	@return_value1 = [dbo].[StockItems_update]
		@V_Stock_item_id = @V_Stock_id,
		@V_StockItem_name = 'gato',
		@V_Supplier_name = 'Contoso,Ltd',
		@V_color_name = 'Blue',
		@V_Unit_package_name = 'Bag',
		@V_OuterPackage_name = 'Bag',
		@V_Brand = null,
		@V_Size = null,
		@V_LeadTimeDays = null,
		@V_QuantityPerOuter = null,
		@V_IsChillerStock = null,
		@V_Barcode =null,
		@V_TaxRate = null,
		@V_UnitPrice = null,
		@V_RecommendedRetailPrice = @V_RecommendedRetailPricee,
		@V_TypicalWeightPerUnit = null,
		@V_MarketingComments = null,
		@V_InternalComments = null,
		@V_Photo = null,
		@V_CustomFields = null,
		@V_Last_edited_BY = null,
		@V_last_update=@v_last_update
SELECT	'Return Value' = @return_value1

EXEC	@return_value = [dbo].[PackageTypes_id]
		@V_StockItemName = 'gato'

		select * from Warehouse.StockItems

