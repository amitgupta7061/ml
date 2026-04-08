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

## 2. Relational Database Keys & Constraints
Keys are crucial in relational databases because they ensure data uniqueness and establish relationships between different tables.

### Types of SQL Keys:
- **Super Key:** A single column or a combination of columns that can uniquely identify a record in a table.
- **Candidate Key:** A minimal Super Key. It contains no redundant attributes. A table can have multiple Candidate Keys.
- **Primary Key (PK):** A chosen Candidate Key used to uniquely identify each row in a table. A table can have only ONE Primary Key. It cannot contain `NULL` values.
- **Foreign Key (FK):** A column (or set of columns) in one table that refers to the Primary Key in another table. It is used to link two tables together and enforce referential integrity.
- **Unique Key:** Ensures that all values in a column are different. Unlike a Primary Key, a Unique Key can usually accept one `NULL` value.
- **Composite Key:** A Primary Key that is made up of two or more columns. Neither column alone guarantees uniqueness, but together they do.
- **Alternate Key:** Any Candidate Key that was not chosen to be the Primary Key.

### SQL Constraints:
Constraints are rules enforced on data columns on a table.
- `NOT NULL`: Ensures that a column cannot have a NULL value.
- `UNIQUE`: Ensures that all values in a column are different (same as Unique Key).
- `PRIMARY KEY`: A combination of `NOT NULL` and `UNIQUE`. Uniquely identifies each row.
- `FOREIGN KEY`: Uniquely identifies a row in another table.
- `CHECK`: Ensures that all values in a column satisfy a specific condition.
- `DEFAULT`: Sets a default value for a column when no value is specified.

## 3. Basic Filtering & Sorting
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



## Transaction 
ACID PROPERTY

- Atomicity: All operations in a transaction are completed successfully, or none are applied.
- Consistency: A transaction takes the database from one valid state to another, maintaining database invari
- Isolation: Transactions are isolated from each other until they are completed, preventing interference.
- Durability: Once a transaction is committed, it remains so, even in the event of a system failure.


## index in sql

 - index are special database objects that make data retrieval faster by providing quick access to rows in a table based on the values of one or more columns.

 Syntax
    CREATE INDEX index_name ON table_name (column1, column2, ...);
    SHOW INDEX FROM table_name; -- to view existing indexes on a table
    DROP index index_name ON table_name; -- to remove an index from a table