-- Q : How to extract first name from contact name

-- Well, here is your problem...
-- CustommerName = Alejandra camino  -> Alejandras

SELECT t.ContactName
FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t
ORDER BY 1;