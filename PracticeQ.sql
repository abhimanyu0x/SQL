CREATE DATABASE XYZ;
CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);
INSERT INTO employee (id,name,salary) VALUE (1,"adam",25000), (2,"bob",30000), (3,"casey",40000);
SELECT*FROM employee;