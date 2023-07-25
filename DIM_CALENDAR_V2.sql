--Cleaned DIM_DateTable--
SELECT
[DateKey],
      [FullDateAlternateKey] As Date,
	  --[DayNumberOfWeek],
	  [EnglishDayNameOfWeek] As Day,
	  --[SpanishDayNameOfWeek],
	  --[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear],
	  [WeekNumberOfYear] As WeekMumber,
	  [EnglishMonthName] As Month,
	  LEFT([EnglishMonthName],3) As MonthShort,
	  --[SpanishMonthName]
      --,[FrenchMonthName]
      [MonthNumberOfYear] As MonthNumber
      ,[CalendarQuarter] As Quarter
      ,[CalendarYear] As Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear>=2019