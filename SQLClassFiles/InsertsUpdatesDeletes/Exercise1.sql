/*1.Update your record in the Employees table to include some Notes.

2.Raise the unit price of all products in the Products table by 10%
for all products that are out of stock. This should affect 5 rows.

3.Try to delete yourself from the Employees table. Could you?
	If you were not allowed to delete yourself from the Employees table,
	 figure out what other records you have to delete so that you can.*/

UPDATE Employees
SET Notes = 'These are some notes.'
WHERE FirstName = 'Peter';