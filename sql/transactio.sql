CREATE DATABASE IF NOT EXISTS prime;

USE prime;

CREATE TABLE accounts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    balance decimal(10, 2)
);

INSERT INTO accounts (name, balance) VALUES 
('Alice', 1000.00),
('Bob', 1500.00),
('Charlie', 2000.00);

SELECT * FROM accounts;


-- Transaction Example: Transferring money from Alice to Bob
START TRANSACTION;
UPDATE accounts SET balance = balance - 200.00 WHERE id = 1;
UPDATE accounts SET balance = balance + 200.00 WHERE id = 2;
COMMIT;


-- Rollback Example: Attempting to transfer more money than Alice has
START TRANSACTION;
UPDATE accounts SET balance = balance - 1200.00 WHERE id = 1; 
UPDATE accounts SET balance = balance + 1200.00 WHERE id = 2;
ROLLBACK;


-- Savepoint Example: Transferring money with a savepoint
START TRANSACTION;    
UPDATE accounts SET balance = balance - 300.00 WHERE id = 1;
UPDATE accounts SET balance = balance + 300.00 WHERE id = 2;
SAVEPOINT after_transfer;
-- getting cashback for Alice
UPDATE accounts SET balance = balance + 10 WHERE id = 1;
ROLLBACK TO after_transfer;
COMMIT;

