/*1.Create a report showing the contact name and phone numbers for all employees, customers,
and suppliers. MySQL*/

SELECT CONCAT(FirstName, ' ', LastName) AS Contact, HomePhone As Phone
FROM Employees
    UNION
SELECT ContactName, Phone
FROM Customers
    UNION
SELECT ContactName, Phone
FROM Suppliers
ORDER BY Contact;