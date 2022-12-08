CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'user'@'%';
FLUSH PRIVILEGES;

USE appDB;

CREATE TABLE IF NOT EXISTS users (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL,
  surname VARCHAR(40) NOT NULL,
  password VARCHAR(240) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS products (
    ID INT(11) NOT NULL AUTO_INCREMENT,
    name text NOT NULL,
    price int NOT NULL,
    PRIMARY KEY (ID)
    );

INSERT INTO users (name, surname, password)
VALUES ('admin', 'adminovich','$2y$12$bGLKDQ48OJac5kIxU6gC2O8RzsZdDnErNyen5tpXfDqvO.uQQQfNS');

INSERT INTO users (name, surname, password)
VALUES ('dmitriy', 'elanskiy','$2y$12$IoQmHA/OLfpO1dbRCCjRWeimRW.gnYB628raLWaQyxL/.E.pYn8sS');

INSERT INTO users (name, surname, password)
VALUES ('user_1', 'user','$2y$12$RAcsSkOv1Kg6KPYLagkruuXlTIokKAyQ.wGqR6z6J7fGALEOIuGWa');

INSERT INTO users (name, surname, password)
VALUES ('user_2', 'user','$2y$12$RAcsSkOv1Kg6KPYLagkruuXlTIokKAyQ.wGqR6z6J7fGALEOIuGWa');

INSERT INTO users (name, surname, password)
VALUES ('user_3', 'user','$2y$12$RAcsSkOv1Kg6KPYLagkruuXlTIokKAyQ.wGqR6z6J7fGALEOIuGWa');

INSERT INTO users (name, surname, password)
VALUES ('user_4', 'user','$2y$12$RAcsSkOv1Kg6KPYLagkruuXlTIokKAyQ.wGqR6z6J7fGALEOIuGWa');

INSERT INTO users (name, surname, password)
VALUES ('user_5', 'user','$2y$12$RAcsSkOv1Kg6KPYLagkruuXlTIokKAyQ.wGqR6z6J7fGALEOIuGWa');

INSERT INTO users (name, surname, password)
VALUES ('user_6', 'user','$2y$12$RAcsSkOv1Kg6KPYLagkruuXlTIokKAyQ.wGqR6z6J7fGALEOIuGWa');





-- INSERT INTO products(name, price)
-- VALUES ('coffee', 360);

-- INSERT INTO products(name, price)
-- VALUES ('milk', 120);

-- INSERT INTO products(name, price)
-- VALUES ('chocolate', 150);

-- INSERT INTO products(name, price)
-- VALUES ('cheese', 420);


INSERT INTO products(name, price)
VALUES ('Palit NVIDIA GeForce RTX 2060SUPER, PA-RTX2060SUPER DUAL 8G no LED', 28990);

INSERT INTO products(name, price)
VALUES ('Palit NVIDIA GeForce RTX 3050, PA-RTX3050 DUAL', 27990);

INSERT INTO products(name, price)
VALUES ('Palit NVIDIA GeForce RTX 3060Ti, PA-RTX3060Ti DUAL OC 8G V1 LHR', 41990);