-- Limpando a DIM_Date Table --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Data, 
  --[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] AS Dia, 
  --[SpanishDayNameOfWeek], 
  --[FrenchDayNameOfWeek], 
  --[DayNumberOfMonth], 
  --[DayNumberOfYear], 
  --[WeekNumberOfYear],
  [EnglishMonthName] AS 'Mês', 
  Left([EnglishMonthName], 3) AS MonthShort,   -- Useful for front end date navigation and front end graphs.
  --[SpanishMonthName], 
  --[FrenchMonthName], 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Trimestre, 
  [CalendarYear] AS Ano --[CalendarSemester], 
  --[FiscalQuarter], 
  --[FiscalYear], 
  --[FiscalSemester] 
FROM 
 [AdventureWorksDW2019updated].[dbo].[DimDate]
WHERE 
  CalendarYear >= 2018