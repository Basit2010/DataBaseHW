1. SELECT DISTINCT C.FirstName, C.LastName
FROM Bill B
JOIN Customer C ON B.CustomerID = C.CustomerID
JOIN Room R ON B.RoomID = R.RoomID
JOIN Waiter W ON R.HeadWaiterID = W.WaiterID
WHERE B.Amount > 450.00 AND W.FirstName = 'Charles';

2. SELECT DISTINCT W.FirstName, W.LastName
FROM Bill B
JOIN Customer C ON B.CustomerID = C.CustomerID
JOIN Room R ON B.RoomID = R.RoomID
JOIN Waiter W ON R.HeadWaiterID = W.WaiterID
WHERE C.FirstName = 'Nerida' AND B.BillDate = '2016-01-11';

3. SELECT DISTINCT C.FirstName, C.LastName
FROM Bill B
JOIN Customer C ON B.CustomerID = C.CustomerID
WHERE B.Amount = (
    SELECT MIN(Amount) FROM Bill
);

4. SELECT W.FirstName, W.LastName
FROM Waiter W
WHERE NOT EXISTS (
    SELECT 1
    FROM Bill B
    WHERE W.WaiterID = B.WaiterID
);

5. SELECT DISTINCT 
    C.FirstName AS CustomerFirstName, 
    C.LastName AS CustomerLastName,
    HW.FirstName AS HeadWaiterFirstName, 
    HW.LastName AS HeadWaiterLastName, 
    R.RoomName
FROM Bill B
JOIN Customer C ON B.CustomerID = C.CustomerID
JOIN Room R ON B.RoomID = R.RoomID
JOIN Waiter HW ON R.HeadWaiterID = HW.WaiterID
WHERE B.Amount = (
    SELECT MAX(Amount) FROM Bill
);

