# SQL Bookstore Analysis Project

## Overview

This project analyzes an **Online Book Store** dataset using **PostgreSQL**.
The goal of this project was to practice core SQL concepts by working with relational data across multiple tables and solving business-focused analytical questions.

The project covers:

* Data filtering
* Aggregations
* Joins
* Grouping
* Ranking
* Business metric analysis

---

## Dataset

The dataset consists of 3 CSV files:

### Books

Contains information about books such as:

* Book ID
* Title
* Author
* Genre
* Published Year
* Price
* Stock

### Customers

Contains customer information:

* Customer ID
* Name
* Email
* Phone
* City
* Country

### Orders

Contains transaction/order information:

* Order ID
* Customer ID
* Book ID
* Order Date
* Quantity
* Total Amount

---

## Database Schema

The project uses a relational database with three tables:

* **books**
* **customers**
* **orders**

Relationships:

* Each order belongs to one customer
* Each order references one book
* A customer can place multiple orders
* A book can appear in multiple orders

## ER Diagram

![ER Diagram](er_diagram.png)

---

## SQL Concepts Used

This project helped practice the following SQL concepts:

* `SELECT`
* `WHERE`
* `ORDER BY`
* `GROUP BY`
* `HAVING`
* `JOIN`
* Aggregate Functions:

  * `SUM()`
  * `COUNT()`
  * `AVG()`
  * `MIN()`
  * `MAX()`
* Subqueries
* Aliasing
* Filtering with `DISTINCT`

---

## Business Questions Solved

Some example analytical questions solved in this project:

* Retrieve all fiction books
* Find books published after 1950
* Calculate total inventory stock
* Identify the most expensive book
* Find customers who placed multiple orders
* Compute total revenue from all orders
* Find total books sold by genre
* Find the most frequently ordered book
* Identify the highest spending customer
* Analyze sales by author and city

---

## Key Insights

Examples of business insights generated:

* Most popular book based on order frequency
* Highest revenue-generating customer
* Top-selling genres
* Best-performing authors by quantity sold
* Cities with high-spending customers

---

## Tools Used

* **PostgreSQL**
* **VS Code**
* **pgAdmin**
* **dbdiagram.io**

---

## Project Goal

This project was built as part of SQL practice to strengthen database querying and analytical thinking using real-world business scenarios.

It focuses not only on SQL syntax, but also on understanding how to translate business questions into data queries.
