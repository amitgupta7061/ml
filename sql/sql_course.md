# Complete SQL Course Theory

Welcome to the Complete SQL Course! This markdown file contains the theoretical foundation of SQL (Structured Query Language), taking you from basic to advanced concepts.

## 1. Introduction to SQL
SQL is the standard language for dealing with Relational Databases. It is used to insert, search, update, and delete database records.

### Sub-languages of SQL:
1. **DDL (Data Definition Language):** Defines database structure (schema).
   - `CREATE`: Creates a new table, view of a table, or other object in the database.
   - `ALTER`: Modifies an existing database object, such as a table.
   - `DROP`: Deletes an entire table, a view of a table or other objects.
   - `TRUNCATE`: Removes all records from a table, including all spaces allocated for the records.

2. **DML (Data Manipulation Language):** Manages data within schema objects.
   - `INSERT`: Creates a record.
   - `UPDATE`: Modifies records.
   - `DELETE`: Deletes records.

3. **DQL (Data Query Language):** Extracts data from the database.
   - `SELECT`: Retrieves certain records from one or more tables.

4. **DCL (Data Control Language):** Controls access to data.
   - `GRANT`: Gives a user access privileges to database.
   - `REVOKE`: Withdraws access privileges.

5. **TCL (Transaction Control Language):** Manages transactions.
   - `COMMIT`: Commits a transaction.
   - `ROLLBACK`: Rollbacks a transaction in case of any error occurs.

## 2. Basic Filtering & Sorting
- **`WHERE`**: Filters records based on specific conditions.
- **`ORDER BY`**: Sorts the result set in ascending (`ASC`) or descending (`DESC`) order.
- **Operators**: `=`, `<`, `>`, `<=`, `>=`, `<>`, `BETWEEN`, `LIKE`, `IN`.

## 3. Aggregate Functions & Grouping
- **Aggregate Functions**: Perform a calculation on a set of values and return a single value (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`).
- **`GROUP BY`**: Groups rows that have the same values into summary rows.
- **`HAVING`**: Used instead of `WHERE` with aggregate functions.

## 4. SQL Joins
A `JOIN` clause is used to combine rows from two or more tables, based on a related column between them.
- **`INNER JOIN`**: Returns records that have matching values in both tables.
- **`LEFT (OUTER) JOIN`**: Returns all records from the left table, and the matched records from the right table.
- **`RIGHT (OUTER) JOIN`**: Returns all records from the right table, and the matched records from the left table.
- **`FULL (OUTER) JOIN`**: Returns all records when there is a match in either left or right table.

## 5. Advanced SQL Concepts
- **Subqueries**: A query nested inside another query (e.g., inside a `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement).
- **CTEs (Common Table Expressions)**: A temporary named result set that you can reference within a `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement. Created using the `WITH` clause.
- **Window Functions**: Perform calculations across a set of table rows that are somehow related to the current row (e.g., `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`).
- **Views**: A virtual table based on the result-set of an SQL statement.
- **Stored Procedures**: Prepared SQL code that you can save and reuse over and over again.
- **Triggers**: SQL codes that are automatically executed in response to certain events on a particular table.
- **Indexes**: Used to retrieve data from the database more quickly than otherwise.

---
**Next Steps**: Check the accompanying `.sql` files in this directory to see these concepts in action!