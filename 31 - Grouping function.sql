Create table Sales
(
    Id int primary key identity,
    Continent nvarchar(50),
    Country nvarchar(50),
    City nvarchar(50),
    SaleAmount int
)

Insert into Sales values('Asia','India','Bangalore',1000)
Insert into Sales values('Asia','India','Chennai',2000)
Insert into Sales values('Asia','Japan','Tokyo',4000)
Insert into Sales values('Asia','Japan','Hiroshima',5000)
Insert into Sales values('Europe','United Kingdom','London',1000)
Insert into Sales values('Europe','United Kingdom','Manchester',2000)
Insert into Sales values('Europe','France','Paris',4000)
Insert into Sales values('Europe','France','Cannes',5000)

SELECT   Continent, Country, City, SUM(SaleAmount) AS TotalSales,
         GROUPING(Continent) AS GP_Continent,
         GROUPING(Country) AS GP_Country,
         GROUPING(City) AS GP_City
FROM Sales
GROUP BY ROLLUP(Continent, Country, City)


SELECT  
    CASE WHEN
         GROUPING(Continent) = 1 THEN 'All' ELSE ISNULL(Continent, 'Unknown')
    END AS Continent,
    CASE WHEN
         GROUPING(Country) = 1 THEN 'All' ELSE ISNULL(Country, 'Unknown')
    END AS Country,
    CASE
         WHEN GROUPING(City) = 1 THEN 'All' ELSE ISNULL(City, 'Unknown')
    END AS City,
    SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ROLLUP(Continent, Country, City)

SELECT   ISNULL(Continent, 'All') AS Continent,
         ISNULL(Country, 'All') AS Country,
         ISNULL(City, 'All') AS City,
         SUM(SaleAmount) AS TotalSales
FROM Sales

GROUP BY ROLLUP(Continent, Country, City)

