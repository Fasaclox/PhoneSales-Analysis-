--Phone Sales - Analysis 
Select * From PhoneSales

-- Total Rows--
Select COUNT(Date) AS DateRowCount
From PhoneSales 

Select COUNT(Country) AS CountryRowCount
From PhoneSales 

Select COUNT(Distributor) AS DistributorRowCount
From PhoneSales 

--Total Countries--

Select COUNT(DISTINCT(Country)) AS TotalCountry
From PhoneSales

Select DISTINCT(Country) AS Country
From PhoneSales

--Total Distributors--
Select COUNT(DISTINCT(Distributor)) AS TotalDistributor
From PhoneSales

Select DISTINCT(Distributor) AS Distributor
From PhoneSales

-- Total Brands--
Select COUNT(DISTINCT(Brand)) AS TotalBrand
From PhoneSales

Select DISTINCT(Brand) AS Brands
From PhoneSales

--Total Operartors--
Select COUNT(DISTINCT(Operator)) AS TotalOperator 
From PhoneSales

Select DISTINCT(Operator) AS Operators 
From PhoneSales;


-- Total Sales--
Select SUM(Sales) AS TotalSales
From PhoneSales

--Change Column Name---
Exec sp_rename 'PhoneSales.quantity','Quantity','COLUMN';

--Total Quantity--
Select SUM(Quantity) AS Total_Quantity
From PhoneSales

---Average Price---
Select AVG( [Unit Price] ) AS AveragePrice
From PhoneSales 

---Max Price --
Select MAX([Unit Price]) AS MaxPrice
From PhoneSales

---Min  Price --
Select MIN([Unit Price]) AS [Min Price]
From PhoneSales

--Total sales by Distributors--
Select
	Distributor,
	Sum(sales) AS TotalSales
From 
	PhoneSales
Group by 
	Distributor
Order by 
	TotalSales DESC

--Total sales by Brand--
Select
	Brand,
	Sum(sales) AS TotalSales
From 
	PhoneSales
Group by 
	Brand
Order by 
	TotalSales DESC

--Total sales by Operator--
Select
	Operator,
	Sum(sales) AS TotalSales
From 
	PhoneSales
Group by 
	Operator
Order by 
	TotalSales DESC

--Total sales by Country Top 10--
Select Top 10
	Country,
	Sum(sales) AS TotalSales
From 
	PhoneSales
Group by 
	Country
Order by 
	TotalSales DESC
 
--Total sales by Country Bottom 10--

Select Top 10
	Country,
	Sum(sales) AS TotalSales
From 
	PhoneSales
Group by 
	Country
Order by 
	TotalSales 
Select * From PhoneSales

--Sales by Year ---
Select 
	Datepart(Year,[Date]) AS [Year],
	Sum(Sales) AS TotalSales
From 
	PhoneSales
Group by Datepart(Year,[Date])
Order by [Year] DESC



