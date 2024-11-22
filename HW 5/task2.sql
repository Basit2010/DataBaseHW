1.SELECT SUM(billTotal) AS Income
FROM Bills;

2.SELECT SUM(billTotal) AS `Feb Income`
FROM Bills
WHERE billDate BETWEEN '2016-02-01' AND '2016-02-29';

3.SELECT AVG(billTotal) AS averageBill
FROM Bills
WHERE tableID = 2;

4.SELECT MIN(seats) AS Min, MAX(seats) AS Max, AVG(seats) AS Avg
FROM Tables
WHERE room = 'Blue';

5.SELECT COUNT(DISTINCT tableID) AS distinctTables
FROM Bills
WHERE waiterID IN ('004', '002');

