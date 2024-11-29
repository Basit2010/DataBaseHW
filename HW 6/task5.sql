1. SELECT W.FirstName, W.LastName, B.BillDate, COUNT(B.BillID) AS BillCount
FROM Bill B
JOIN Waiter W ON B.WaiterID = W.WaiterID
GROUP BY W.WaiterID, B.BillDate
HAVING COUNT(B.BillID) >= 2;

2. SELECT RoomName, TableCount
FROM Room
WHERE MaxCapacity > 6;

3. SELECT R.RoomName, SUM(B.Amount) AS TotalBillAmount
FROM Room R
JOIN Bill B ON R.RoomID = B.RoomID
GROUP BY R.RoomName;

4. SELECT 
    HW.FirstName AS HeadWaiterFirstName, 
    HW.LastName AS HeadWaiterLastName, 
    SUM(B.Amount) AS TotalBillAmount
FROM Waiter W
JOIN Bill B ON W.WaiterID = B.WaiterID
JOIN Waiter HW ON W.HeadWaiterID = HW.WaiterID
GROUP BY HW.WaiterID
ORDER BY SUM(B.Amount) DESC;

5. SELECT C.FirstName, C.LastName, AVG(B.Amount) AS AverageSpent
FROM Customer C
JOIN Bill B ON C.CustomerID = B.CustomerID
GROUP BY C.CustomerID
HAVING AVG(B.Amount) > 400;

6. SELECT W.FirstName, W.LastName, B.BillDate, COUNT(B.BillID) AS BillCount
FROM Bill B
JOIN Waiter W ON B.WaiterID = W.WaiterID
GROUP BY W.WaiterID, B.BillDate
HAVING COUNT(B.BillID) >= 3;
