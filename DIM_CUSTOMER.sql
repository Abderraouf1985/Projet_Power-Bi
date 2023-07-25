--Cleaned DIM_Customers Table--
SELECT  
      c.customerkey AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.firstName As [FirstName],
	  --[MiddleName]
      c.lastName AS [LastName],
	  --Combined First and Last Name
	  c.firstName +' '+ LastName AS [Full Name],
	  --[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      c.dateFirstPurchase AS DateFirstPurchase,
      --,[CommuteDistance]
	  --Joined IN customer City from Geography Table
	  g.city AS[Customer City]
  FROM 
  dbo.DimCustomer AS c
  LEFT JOIN dbo.DimGeography AS g ON g.geographyKey=c.geographyKey
  ORDER BY
  CustomerKey ASC --Ordered List by CustomerKey