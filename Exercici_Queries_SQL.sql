SELECT COUNT(flightID) AS total FROM flights;
SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides FROM flights GROUP BY Origin;
SELECT Origin, colYear, colMonth, ArrDelay AS prom_arribades FROM flights ORDER BY Origin, colYear, colMonth;
SELECT usairports.City AS City, flights.colYear, flights.colMonth, flights.ArrDelay AS prom_arribades FROM usairports, flights WHERE  flights.Origin = usairports.IATA ORDER BY City, colYear, colMonth;
SELECT UniqueCarrier, colYear, colMonth, COUNT(Cancelled) AS total_cancelled FROM flights WHERE Cancelled = 1 GROUP BY UniqueCarrier ORDER BY total_cancelled desc, colYear, colMonth;
SELECT TailNum , SUM(Distance) AS totalDistance FROM flights WHERE TailNum LIKE 'N%'  GROUP BY TailNum ORDER BY totalDistance desc LIMIT 10;
SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM flights GROUP BY UniqueCarrier HAVING AVG(ArrDelay) > 10 ORDER BY avgDelay desc;