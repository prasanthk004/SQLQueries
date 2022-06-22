 
 select Items.[Item ID],COUNT(Items.[Item ID]),SUM(Items.[Sales Price])
										from Items
										group by [Item ID]
										having SUM(Items.[Sales Price])>300