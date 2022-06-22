
select * from Purchase inner join [Purchase detail id]
 on Purchase.[Purchase ID]=[Purchase detail id].[Purchase detail ID]  
			

select a.[Item ID],a.[Item Description],b.[Purchase detail ID],b.[Purchase ID],b.Qty,b.Rate,b.Amount 
from Items a inner join [Purchase detail id] b 
on a.[Item ID]=b.[Item ID] where b.amount>100 order by [Item ID] 

select  a.*,b.[Purchase detail ID],b.[Purchase ID],b.Qty,b.Rate,b.Amount 
from Items a inner join [Purchase detail id] b 
on a.[Item ID]=b.[Item ID] where b.amount>100 order by [Item ID] 

select sum(b.Qty)as [Total Qty] , count(b.qty) as [Total Count]
 from  Purchase a inner join	 [Purchase detail id] b 
 on a.[Purchase ID]=b.[Purchase ID]


 select * from [Purchase detail id]