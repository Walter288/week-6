-- Q : How to extract first name from contact name

-- Well, here is your problem...
-- CustommerName = Alejandra camino  -> Alejandras
-- Google Search '' Hoe to extract first name from combined name tsql stack overflow''
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT 
    t.ContactName,
    LEFT(t.ContactName, CHARINDEX(' ', t.ContactName + ' ') - 1) AS First_Name
FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t
ORDER BY t.ContactName;
