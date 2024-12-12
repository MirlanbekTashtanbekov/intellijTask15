CREATE TABLE cars(
                     id        SERIAL primary key,
                     brand     VARCHAR NOT NULL,
                     model     VARCHAR,
                     year      INTEGER,
                     color     VARCHAR,
                     market_id INTEGER references markets (id)
);
drop table cars;

CREATE TABLE    markets (
                            id SERIAL PRIMARY KEY,
                            market_name VARCHAR NOT NULL,
                            address VARCHAR
);

create table phones(
                       id SERIAL primary key,
                       brand VARCHAR not null,
                       model VARCHAR,
                       price INTEGER,
                       store_id INTEGER references stores(id)
);

CREATE TABLE  stores(
                        id SERIAL PRIMARY KEY,
                        stores_name VARCHAR not null
);

CREATE TABLE actors
(
    id         SERIAL primary key,
    first_name VARCHAR,
    last_name  VARCHAR,
    age        INTEGER
);

CREATE TABLE films(
                      id SERIAL primary key,
                      name VARCHAR,
                      date_announce INTEGER
);

drop table films;

CREATE TABLE electronics(
                            id SERIAL primary key,
                            name VARCHAR,
                            brand VARCHAR
);

CREATE TABLE employee(
                         id SERIAL primary key,
                         name VARCHAR,
                         age INTEGER,
                         work_id INTEGER references work(id)
);

CREATE TABLE work(
                     id SERIAL primary key,
                     name VARCHAR,
                     address VARCHAR
);

INSERT INTO cars (brand, model, year, color, market_id)
values ('KIA','K8',2020,'Black',1),
       ('Hyundai','Grandeur',2018,'Black',2),
       ('BMW','750L',2021,'White',1),
       ('Audi','Q7',2019,'Brown',2);

INSERT INTO markets (market_name, address)
values ('Auto-DeLux','Pr.Chui 245'),
       ('Car Lux King','Jibek-Jolu 15'),
       ('Best cars','Pr.Mira 150');

INSERT INTO stores (stores_name)
values ('Almurut Store'),
       ('O store'),
       ('Mega store');

INSERT INTO phones (brand, model, price, store_id)
values ('Apple','Iphone 15',125000,1),
       ('Samsung','S24',135000,2),
       ('Redmi','X10',85000,3),
       ('Samsung','S23+',133000,1);

INSERT INTO actors (first_name, last_name, age)
values ('Mark','Louri',28),
       ('Naomi','Chloi',30),
       ('Tom','Kruz',35);

INSERT INTO films (name, date_announce)
values ('King',2020),
       ('City',2023),
       ('Winter',2024);

INSERT INTO electronics (name, brand)
values ('Laptop','Huawei'),
       ('TV','Samsung'),
       ('PC','HP');

INSERT INTO work (name, address)
values ('Accounting','Bishkek'),
       ('Bank staff','Osh');

INSERT INTO employee (name, age, work_id)
values ('Hardi',28,1),
       ('Vudi',32,2),
       ('Joni',25,1);