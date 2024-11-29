1. SELECT DISTINCT W.FirstName, W.LastName
FROM Waiter W
JOIN Bill B ON W.WaiterID = B.WaiterID
JOIN Customer C ON B.CustomerID = C.CustomerID
WHERE C.FirstName = 'Tanya' AND C.LastName = 'Singh';

2.SELECT DISTINCT R.Date
FROM Room R
JOIN Waiter W ON R.HeadWaiterID = W.WaiterID
WHERE W.FirstName = 'Charles' AND R.RoomName = 'Green' AND R.Date LIKE '2016-02%';

3. SELECT DISTINCT W.FirstName, W.LastName
FROM Waiter W
WHERE W.HeadWaiterID = (
    SELECT HeadWaiterID
    FROM Waiter
    WHERE FirstName = 'Zoe' AND LastName = 'Ball'
);

4. SELECT 
    CONCAT(C.FirstName, ' ', C.LastName) AS CustomerName,
    B.Amount,
    CONCAT(W.FirstName, ' ', W.LastName) AS WaiterName
FROM Bill B
JOIN Customer C ON B.CustomerID = C.CustomerID
JOIN Waiter W ON B.WaiterID = W.WaiterID
ORDER BY B.Amount DESC;

5. SELECT DISTINCT W.FirstName, W.LastName
FROM Waiter W
JOIN Team T ON W.WaiterID = T.WaiterID
WHERE T.TeamID IN (
    SELECT DISTINCT T1.TeamID
    FROM Team T1
    WHERE T1.BillID IN ('00014', '00017')
);

6. SELECT DISTINCT W.FirstName, W.LastName
FROM Waiter W
JOIN Team T ON W.WaiterID = T.WaiterID
JOIN Bill B ON T.BillID = B.BillID
JOIN Room R ON B.RoomID = R.RoomID
WHERE R.RoomName = 'Blue' AND R.Date = '160312'
UNION
SELECT HW.FirstName, HW.LastName
FROM Room R
JOIN Waiter HW ON R.HeadWaiterID = HW.WaiterID
WHERE R.RoomName = 'Blue' AND R.Date = '160312';

