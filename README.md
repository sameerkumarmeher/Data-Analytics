# 📚 SQL Notes: Basic to Advanced

<div align="center">

### 🚀 Complete SQL Learning Guide

**From Beginner to Advanced SQL Concepts**

![SQL](https://img.shields.io/badge/SQL-Learning-blue)
![Database](https://img.shields.io/badge/Database-Management-green)
![GitHub](https://img.shields.io/badge/GitHub-README-orange)

</div>

---

## 📑 Table of Contents

* [What is a Database?](#-what-is-a-database)
* [Types of Databases](#-types-of-databases)
* [Create Database](#️-create-database)
* [Create Table](#-create-table)
* [SQL Data Types](#-common-sql-data-types)
* [Insert Into](#-insert-into)
* [Where Clause](#-where-clause)
* [SQL Operators](#-sql-operators)
* [SQL Learning Roadmap](#-sql-learning-roadmap)

---

# 📖 What is a Database?

A **database** is an organized collection of data that can be easily accessed, managed, and updated.

### Key Features

✅ Stores data electronically
✅ Supports fast retrieval of information
✅ Allows updates and modifications
✅ Maintains data integrity and security

---

# 🗄️ Types of Databases

## 1️⃣ Relational Database (RDBMS)

Stores data in tables consisting of rows and columns.

### Examples

* MySQL
* PostgreSQL
* Oracle
* SQL Server

---

## 2️⃣ Non-Relational Database (NoSQL)

Stores data in flexible formats such as documents, JSON, graphs, and key-value pairs.

### Examples

* MongoDB
* Cassandra
* Redis

---

# 🏗️ CREATE DATABASE

Used to create a new database.

```sql
CREATE DATABASE database_name;
```

### Example

```sql
CREATE DATABASE company_db;
```

---

# 📋 CREATE TABLE

Used to create a new table and define its structure.

## Syntax

```sql
CREATE TABLE table_name (
    column1 datatype [constraint],
    column2 datatype [constraint],
    ...
);
```

### Example

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary FLOAT,
    hire_date DATE
);
```

---

# 🧾 Common SQL Data Types

| Data Type  | Description          | Example               |
| ---------- | -------------------- | --------------------- |
| INT        | Whole numbers        | 10, -100              |
| FLOAT      | Decimal values       | 5.5, -23.45           |
| CHAR(n)    | Fixed-length text    | 'A', 'Test'           |
| VARCHAR(n) | Variable-length text | 'Hello'               |
| DATE       | Date only            | '2025-08-15'          |
| BOOLEAN    | TRUE/FALSE           | TRUE                  |
| DATETIME   | Date and Time        | '2025-08-15 10:45:00' |

---

# ➕ INSERT INTO

Used to insert records into a table.

## Insert All Columns

```sql
INSERT INTO table_name
VALUES (value1, value2, value3);
```

### Example

```sql
INSERT INTO employees
VALUES (1, 'John', 'Smith', 50000, '2024-01-15');
```

---

## Insert Specific Columns

```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

### Example

```sql
INSERT INTO employees (employee_id, first_name, salary)
VALUES (2, 'Alice', 60000);
```

---

# 🔍 WHERE Clause

The **WHERE** clause filters records based on specific conditions.

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

### Example

```sql
SELECT *
FROM employees
WHERE salary > 50000;
```

---

# 🎯 SQL Operators

| Operator    | Description              | Example                            |
| ----------- | ------------------------ | ---------------------------------- |
| =           | Equal to                 | salary = 60000                     |
| >           | Greater than             | salary > 60000                     |
| <           | Less than                | salary < 50000                     |
| >=          | Greater than or equal    | salary >= 70000                    |
| <=          | Less than or equal       | salary <= 65000                    |
| <> / !=     | Not equal                | department <> 'IT'                 |
| BETWEEN     | Range of values          | salary BETWEEN 50000 AND 70000     |
| NOT BETWEEN | Outside range            | salary NOT BETWEEN 50000 AND 70000 |
| IN          | Match values from list   | department IN ('IT','HR')          |
| NOT IN      | Exclude values from list | position NOT IN ('Intern')         |
| LIKE        | Pattern matching         | first_name LIKE 'A%'               |
| NOT LIKE    | Opposite of LIKE         | first_name NOT LIKE 'A%'           |
| IS NULL     | Null values              | salary IS NULL                     |
| IS NOT NULL | Not null values          | salary IS NOT NULL                 |
| AND         | All conditions true      | salary > 50000 AND department='IT' |
| OR          | Any condition true       | department='HR' OR salary > 70000  |
| NOT         | Reverse condition        | NOT department='HR'                |

---

# 🚀 SQL Learning Roadmap

## 🟢 Beginner

* CREATE DATABASE
* CREATE TABLE
* INSERT INTO
* SELECT
* WHERE
* ORDER BY
* LIMIT

## 🟡 Intermediate

* UPDATE
* DELETE
* GROUP BY
* HAVING
* JOINS
* SUBQUERIES

## 🔴 Advanced

* Window Functions
* Common Table Expressions (CTEs)
* Stored Procedures
* Triggers
* Views
* Indexing
* Query Optimization

---

# 👨‍💻 Author

### Sameer Kumar Meher

📌 Learning SQL from Basic to Advanced
📌 Hands-on Practice & Real-World Queries
📌 Data Analytics & Database Enthusiast

⭐ If these notes help you, consider starring the repository.
