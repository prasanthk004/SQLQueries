--Select StateName , count(StateName) as counts, sum(Amount) as TotalAmount from SalesView  group by StateName



use DBLearn




--Top 5 customers
--Select top 5 CusName , Sum(Amount) as TotalAmount , Count(CusName) as NoPurchase from SalesView group by CusName  order by TotalAmount desc
--Avg   
--Select  CusName , Sum(Amount) as TotalAmount , Count(CusName) as NoPurchase , AVG(Amount) as Average from SalesView 
                                        --  group by CusName   having Avg(Amount)>100 
										 -- order by TotalAmount desc 

--Select DISTINCT  CusName  from SalesView  where Amount>(Select Avg(Amount)*0.5 from Sales ) order by CusName

--Select *from SalesView where CusName in( Select DISTINCT   CusName  from SalesView where Amount>(Select Avg(Amount) from Sales ) )

 --Item cat Wise Sales--
 --Select   ItemCatName,Sum(Amount) TotalSales from SalesView   group by ItemCatName


  --Item   Wise Sales--

 --Select ItemName,Sum(Amount) TotalSales from SalesView group by ItemName

 -- TOP Sold product based on amount

--- Select top 4 ItemName,Sum(Amount) TotalPurchase from SalesView group by ItemName order by TotalPurchase desc

--Top Sold based on qty
--select top 3 ItemName , Sum(Qty) as TotalQty from SalesView group by ItemName 

-- IdentifytheCity which have no purchase

--Select * from City where cityid not in (Select distinct  CityID     from SalesView where year(BillDate)=2022)


-- Top SalesYear
Select YEAR(BillDate) as SalesYear from SalesView group by Year(BillDate)

--Top SoldQty year

Select YEAR(BillDate) as YearOfSales , ItemName, Sum(qty) QTY from SalesView group by Year(BillDate) , ItemName  order by Year(BillDate) desc , ItemName







										
									 