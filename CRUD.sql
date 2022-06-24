--insert into City(CityName,Stateid) values('Guntur',NULL)
Select * from City
--Update
/*
Update City SET Stateid=3
     where Cityid=16
Update City Set CityName='Andheri'
    Where Cityid=16*/

--Update City Set CityName='Borivali', Stateid=3 where Cityid=3

Update City set CityName='Visakapatinam',Stateid=5 where Cityid=18


-- Update Values using Another Table
Update Sales Set Rate=