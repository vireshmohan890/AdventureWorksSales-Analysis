-- Cleansed DIM_Date Table --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS DATE 
  -- ,[DayNumberOfWeek]
     ,[EnglishDayNameOfWeek] AS Day 
  -- ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  --,[WeekNumberOfYear]
  , 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS MonthShort
  -- ,[SpanishMonthName]
  -- ,[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS Monthno, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  -- ,[CalendarSemester]
  -- ,[FiscalQuarter]
  -- ,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  [CalendarYear] >= 2019;
