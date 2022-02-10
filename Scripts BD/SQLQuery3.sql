create function Warehouse.StockItems_StockItemID_StockItemName
(@p_Stock_name char(100))
returns int
as
begin 
	declare @v_stockItem_id int 

	select  
		@v_stockItem_id=StockItemID 
	from 
		Warehouse.StockItems
	where 
		StockItemName=@p_Stock_name
	
	return @v_stockItem_id


end;