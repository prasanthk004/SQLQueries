--Select StateName , count(StateName) as counts, sum(Amount) as TotalAmount from SalesView  group by StateName








--Top 5 customers
--Select top 5 CusName , Sum(Amount) as TotalAmount , Count(CusName) as NoPurchase from SalesView group by CusName  order by TotalAmount desc
--Avg   
--Select  CusName , Sum(Amount) as TotalAmount , Count(CusName) as NoPurchase , AVG(Amount) as Average from SalesView 
                                        --  group by CusName   having Avg(Amount)>100 
										 -- order by TotalAmount desc 

--Select DISTINCT  CusName  from SalesView  where Amount>(Select Avg(Amount)*0.5 from Sales ) order by CusName

--Select *from SalesView where CusName in( Select DISTINCT   CusName  from SalesView where Amount>(Select Avg(Amount) from Sales ) )

 --Item cat Wise Sales--
 Select   ItemCatName,Sum(Amount) TotalSales from SalesView   group by ItemCatName


  --Item   Wise Sales--

 Select ItemName,Sum(Amount) TotalSales from SalesView group by ItemName


										
									 