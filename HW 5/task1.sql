1. SELECT billDate, billTotal
FROM Bills
WHERE customerID = (SELECT customerID 
                     FROM Customers 
                     WHERE firstName = 'Bob' AND lastName = 'Crow');
2.SELECT DISTINCT CONCAT(firstName, ' ', lastName) AS customerName
FROM Customers
WHERE lastName = 'Smith'
ORDER BY lastName DESC, firstName DESC;

3.SELECT DISTINCT CONCAT(firstName, ' ', lastName) AS customerName
FROM Customers
WHERE lastName LIKE 'C%';

4.SELECT firstName, lastName
FROM Employees
WHERE jobTitle = 'Headwaiter';

5.SELECT *
FROM Bills
WHERE billDate BETWEEN '2016-02-01' AND '2016-02-29';

6.SELECT DISTINCT bill_date
FROM Bills
WHERE billDate BETWEEN '2015-01-01' AND '2015-12-31'
ORDER BY billDate;
