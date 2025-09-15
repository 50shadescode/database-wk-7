DROP TABLE ProductDetail_1NF;
DROP TABLE Customa;
DROP TABLE OrderDetails_2NF;
USE salesdb;

-- Question 1 Achieving 1NF
DROP TABLE IF EXISTS ProductDetail_1NF;
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Inserts...
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail_1NF VALUES (103, 'Emily Clark', 'Phone');


-- Question 2 Achieving 2NF
DROP TABLE IF EXISTS Customa;
CREATE TABLE Customa (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Customa VALUES (101, 'John Doe');
INSERT INTO Customa VALUES (102, 'Jane Smith');
INSERT INTO Customa VALUES (103, 'Emily Clark');

DROP TABLE IF EXISTS OrderDetails_2NF;
CREATE TABLE OrderDetails_2NF (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT
);

INSERT INTO OrderDetails_2NF VALUES (101, 'Laptop', 2);
INSERT INTO OrderDetails_2NF VALUES (101, 'Phone', 1);
INSERT INTO OrderDetails_2NF VALUES (102, 'Tablet', 3);
INSERT INTO OrderDetails_2NF VALUES (102, 'Keyboard', 1);
INSERT INTO OrderDetails_2NF VALUES (103, 'Phone', 2);
