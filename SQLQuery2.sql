
Create VIEW TotalPurchases as 
Select  CusName , sum(Amount) as TotalPayment , Count(CusName) as NoOFPurchase from SalesView group by CusName