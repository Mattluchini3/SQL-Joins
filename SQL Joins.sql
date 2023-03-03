/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 Select P.Name as Product, C.Name as Category FROM products as P
 INNER JOIN categories AS C ON C.CategoryID = P.CategoryID
 WHERE C.NAME = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select p.Name, p.Price, r.Rating from products as p
 inner join reviews as r on r.ProductID = p.ProductID
 where r.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.Lastname, Sum(s.Quantity) AS Total FROM sales AS s
INNER JOIN employees AS e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmpolyeeID
ORDER BY Total DESC
LIMIT 2;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as 'Department Name', c.Name as 'Category Name' FROM departments as d
INNER JOIN categories as c ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Applicants' OR c.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, Sum(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnit) as 'Total Price'
FROM products as p
INNER JOIN sales as s on s.ProductID = p.ProductID
WHERE p.ProductID = 97;
-- To verify
select * from sales where productID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV.
-- (only return for the lowest rating!) */
SELECT p.Name, r.Reviewer,r.Rating, r.Comment
FROM products as p
INNER JOIN reviews as r ON r.ProductID = p.ProductID
WHERE p.ProductID = 857 AND r.Rating = 1;

