CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS temp1; /*best practise*/
CREATE DATABASE IF NOT EXISTS temp2;
DROP DATABASE temp1;
DROP DATABASE IF EXISTS temp2; /*best practise*/
USE college; /*use to select database in which we want to work*/
SHOW DATABASES; /*display all the databases*/
SHOW TABLES; /*display all the tables in database*/

CREATE TABLE student(
    /*This command create table and help to design schema*/
    id INT PRIMARY KEY, /* First syntax of PRIMARY KEY --> not null and unique*/
    name VARCHAR(50),
    age INT NOT NULL
    /*PRIMARY KEY(id) ------> second syntax*/
    /*PRIMARY KEY(id,name) ------> combination of two colume can also be primary key, in that case this syntax is used*/
);
INSERT INTO student VALUE(1,"Abhimanyu",21); /*Use to insert values in table*/
DROP TABLE student; /*Delete student table*/

CREATE TABLE student(
    /*This command create table and help to design schema*/
    id INT PRIMARY KEY, /*PRIMARY KEY --> not null and unique*/
    name VARCHAR(50),
    age INT NOT NULL
);
INSERT INTO student VALUE(1,"Abhimanyu",21);/*small syntax*/
INSERT INTO student(id,name,age)VALUE(2,"Ayush",20),(3,"Shilpi",24);/*general syntax with multiple entry*/
INSERT INTO student(id,name,age)VALUE(4,"Ashu",21);/*general syntax with single entry*/
SELECT *FROM student; /*Show table --> "*" select all row and colume from the table*/

CREATE TABLE x(
    id INT NOT NULL,
    name VARCHAR(50),
    PRIMARY KEY (id,name)
);

CREATE TABLE temp3(
    id INT NOT NULL,
    name VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE temp4(
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES temp3(id);
);
CREATE TABLE emp(
    id INT,
    salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUE(1);