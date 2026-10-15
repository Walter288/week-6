-- Q : How to extract first name from contact name

-- Well, here is your problem...
-- CustommerName = Alejandra camino  -> Alejandras
-- Google Search '' Hoe to extract first name from combined name tsql stack overflow''
-- https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name
SELECT 
    t.CustomerID,
    t.ContactName,
    dbo.udf_parse_first_name(t.ContactName) AS ContactName_first_name,
    '' AS ContactName_last_name, -- placeholder for last name
    t.Address,
    t.City,
    t.Country
FROM [EC_IT143_DA].[dbo].[t_w3_schools_customers] AS t
ORDER BY t.ContactName;
