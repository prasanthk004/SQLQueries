select   CityName  , Sum(Amount) [Total Purchase] from SalesView group by CityName  having Sum(Amount)>100 order by [Total Purchase] desc


