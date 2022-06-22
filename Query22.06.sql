select  * from Sales 

create view   TotalPurchaseAVG as select CusID , Count(CusID) as NoOFPurChase ,Sum(Amount) Total ,AVG(Amount) Averege  from Sales group by CusID having sum(Amount)>100
 

Select  * from SalesView


Select * from TotalPurchases