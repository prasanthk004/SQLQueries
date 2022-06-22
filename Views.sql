Select * from Sales

 
select s.SalesID,s.BillNo,s.BillDate,c.CusName,ci.CityName,st.StateName,s.ItemID,i.ItemName,ic.ItemCatName,s.Qty,s.Rate,s.Amount from 
Sales s left join Customer c on c.CusID=s.CusID 
        left join Item i  on s.ItemID=i.ItemID
		left join ItemCategory ic on i.ItemCatID=ic.ItemCatId
		inner join City ci on c.Cityid=ci.Cityid
		inner join States st on ci.Stateid=st.Stateid