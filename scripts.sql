SELECT *
FROM books
WHERE genre = 'Fiction'

SELECT * 
FROM books 
WHERE published_year IS NOT NULL
AND published_year > 1950

SELECT *
FROM customers
WHERE country = 'Canada'

SELECT *
FROM orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30'

SELECT SUM(stock) AS total_stock
FROM books

SELECT * 
FROM books
WHERE Price = (
    SELECT MAX(Price)
    FROM books
)

SELECT DISTINCT
    customers.customer_id,
    customers.name,
    customers.country
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.quantity > 1

SELECT *
FROM orders
WHERE total_amount > 20

SELECT DISTINCT
    genre
FROM books

SELECT * 
FROM books
WHERE stock = (
    SELECT MIN(stock)
    FROM books
)

SELECT SUM(total_amount) AS total_revenue
FROM orders

SELECT
books.genre,
SUM(orders.quantity) AS sold_total
FROM books
JOIN orders ON books.book_id = orders.book_id
GROUP BY genre

SELECT
ROUND(AVG(price) , 2) AS avg_price
FROM books
WHERE genre = 'Fantasy'

SELECT orders.customer_id,
       customers.name, 
       COUNT(order_id) AS times_orderd
FROM orders 
JOIN customers
ON orders.customer_id = customers.customer_id
GROUP BY orders.customer_id,
         customers.name
HAVING COUNT(order_id) >=2

SELECT
orders.book_id,
books.title,
COUNT(orders.book_id) AS numb
FROM orders
JOIN books 
ON orders.book_id = books.book_id
GROUP BY orders.book_id ,
    books.title
ORDER BY numb DESC
LIMIt 1

SELECT *
FROM books
WHERE genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3

SELECT 
books.author,
SUM(orders.quantity) AS total_sold
FROM books
JOIN orders
ON books.book_id = orders.book_id
GROUP BY books.author
ORDER BY total_sold DESC


SELECT DISTINCT
customers.city
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
WHERE total_amount > 30


SELECT 
customers.name AS name,
SUM(orders.total_amount) AS total_spent
FROM customers
JOIN orders 
ON customers.customer_id = orders.customer_id
GROUP BY name
ORDER BY total_spent DESC 
LIMIT 1