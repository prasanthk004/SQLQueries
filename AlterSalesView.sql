USE [DBLearn]
GO

/****** Object:  View [dbo].[SalesView]    Script Date: 23-Jun-22 10:15:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[SalesView]
AS
SELECT        s.SalesID, s.BillNo, s.BillDate, c.CusName,ci.Cityid, ci.CityName, st.StateName, s.ItemID, i.ItemName, ic.ItemCatName, s.Qty, s.Rate, s.Amount
FROM            dbo.Sales AS s LEFT OUTER JOIN
                         dbo.Customer AS c ON c.CusID = s.CusID LEFT OUTER JOIN
                         dbo.Item AS i ON s.ItemID = i.ItemID LEFT OUTER JOIN
                         dbo.ItemCategory AS ic ON i.ItemCatID = ic.ItemCatId INNER JOIN
                         dbo.City AS ci ON c.Cityid = ci.Cityid INNER JOIN
                         dbo.States AS st ON ci.Stateid = st.Stateid
GO


