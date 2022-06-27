Declare @query1 decimal(18,3)
set @query1='Select unitRate from Item where itemID=10'
insert into Sales(BillNo,CusID,ItemID,Qty,Rate,Amount) values((Select MAX(BillNo) from Sales)+1,5,5,5,@query1,(Select unitRate from Item where itemID=10)*4) 
select * from Sales;


--Select unitRate from Item where itemID=6