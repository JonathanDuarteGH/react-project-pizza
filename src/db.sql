-- for help  /?

-- list database  /l

-- create database  CREATE DATABASE database_name;

-- list all tables  \d

CREATE TABLE products (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    on_sale boolean NOT NULL
);