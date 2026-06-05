# 📚 My SQL Notes (Basic to Advanced)

## 📖 What is a Database?

A **database** is an organized collection of data that can be easily accessed, managed, and updated. It stores information electronically in a structured format, often using tables.

### Types of Databases

#### 1. Relational Database

Stores data in tables consisting of rows and columns.

**Examples:**

* MySQL
* PostgreSQL
* Oracle
* SQL Server

#### 2. Non-Relational Database (NoSQL)

Stores data in formats such as JSON, documents, key-value pairs, and graphs.

**Examples:**

* MongoDB
* Cassandra
* Redis

---

# 🏗️ CREATE DATABASE

The `CREATE DATABASE` statement is used to create a new database.

```sql
CREATE DATABASE database_name;
```

### Example

```sql
CREATE DATABASE company_db;
```

---

# 📋 CREATE TABLE

The `CREATE TABLE` statement is used to create a new table and define its structure.

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

| Data Type  | Stores               | Example               |
| ---------- | -------------------- | --------------------- |
| INT        | Whole Numbers        | 10, -100              |
| FLOAT      | Decimal Numbers      | 5.5, -23.45           |
| CHAR(n)    | Fixed-Length Text    | 'A', 'Test '          |
| VARCHAR(n) | Variable-Length Text | 'Hello', 'Data'       |
| DATE       | Date Only            | '2023-08-15'          |
| BOOLEAN    | TRUE/FALSE           | TRUE, FALSE           |
| DATETIME   | Date and Time        | '2023-08-15 10:45:00' |

---

# ➕ INSERT INTO

The `INSERT INTO` statement is used to add new records (rows) into a table.

## Insert All Columns

```sql
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
```

### Example

```sql
INSERT INTO employees
VALUES (1, 'John', 'Smith', 50000, '2024-01-15');
```

---

## Insert Specific Columns

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

### Example

```sql
INSERT INTO employees (employee_id, first_name, salary)
VALUES (2, 'Alice', 60000);
```

---

# 🎯 SQL Learning Roadmap

### Basic SQL

* CREATE DATABASE
* CREATE TABLE
* INSERT INTO
* SELECT
* WHERE
* ORDER BY
* LIMIT

### Intermediate SQL

* UPDATE
* DELETE
* GROUP BY
* HAVING
* JOINS
* SUBQUERIES

### Advanced SQL

* Window Functions
* CTEs
* Stored Procedures
* Triggers
* Indexing
* Query Optimization

---

## 🚀 Author

**Sameer Kumar Meher**

Learning SQL from Basic to Advanced with hands-on practice and real-world examples.
