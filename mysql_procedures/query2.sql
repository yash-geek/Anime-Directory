CREATE TABLE account_holders (
id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100)
);
CREATE TABLE acc (
id INT PRIMARY KEY,
account_holder_id INT,
balance DECIMAL(18, 4)
);
drop table accounts;
drop table account_holders;
drop table accounts1
drop table Deposit;
CREATE TABLE accounts1 (
id INT PRIMARY KEY,
account_holder_id INT,
balance DECIMAL(18, 4),
FOREIGN KEY (account_holder_id) REFERENCES account_holders(id)
);
CREATE TABLE Deposit (
deposit_id INT PRIMARY KEY,
amount DECIMAL(18, 4),
investment_duration_years INT,
account_id INT,
FOREIGN KEY (account_id) REFERENCES accounts(id)
);
-- Insert sample data into account_holders table
INSERT INTO account_holders (id, first_name, last_name)
VALUES
(1, 'John', 'Doe'),
(2, 'Jane', 'Smith'),
(3, 'Michael', 'Johnson'),
(4, 'Emily', 'Brown'),
(5, 'David', 'Williams');
-- Insert sample data into the accounts table
INSERT INTO acc (id, account_holder_id, balance)
VALUES
(101, 1, 5000.00),
(102, 2, 7500.00),
(103, 3, 3000.00),
(104, 4, 2500.00),
(105, 5, 6000.00);
INSERT INTO Deposit (deposit_id, amount, investment_duration_years, account_id)
VALUES(201, 10000.00, 3, 101),
(202, 1500.00, 5, 102),
(203, 20000.00, 2, 103),
(204, 500.00, 4, 101),
(205, 30000.00, 2, 103),
(206, 500.00, 4, 101),
(207, 800.00, 1, 102);