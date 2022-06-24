--insert into City(CityName,Stateid) values('Guntur',NULL)
--Select * from City
--Update
/*
Update City SET Stateid=3
     where Cityid=16
Update City Set CityName='Andheri'
    Where Cityid=16*/

--Update City Set CityName='Borivali', Stateid=3 where Cityid=3

--Update City set CityName='Visakapatinam',Stateid=5 where Cityid=18


-- Update Values using Another Table

--Alter table Item Alter column unitRate Decimal(18,3)
--Update Sales Set Rate=i.unitRate from Sales s inner join Item i on s.ItemID=i.itemID
--Update Sales Set Rate=i.unitRate from Sales s  inner join Item i on s.ItemID=i.ItemID

--Updated data based on another coloum
--Update Sales Set Amount=Qty*Rate
Select S.SalesID,S.ItemID,s.Rate,i.ItemID,i.unitRate,s.Qty,s.Amount from Sales  s inner join Item i on s.ItemID=i.ItemID


