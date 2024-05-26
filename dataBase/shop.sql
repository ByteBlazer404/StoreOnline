CREATE SCHEMA  `shop` DEFAULT CHARACTER SET utf8mb4;

use shop;

create table users (
    id_user int auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(100),
    password text(50),
    date_init date,
    primary key(id_user)
);

create table category (
    id_category int auto_increment,
    id_user int not null,
    name_category varchar(50),
    date_init date,
    primary key (id_category)
);

create table images (
    id_images int auto_increment,
    id_category int not null,
    name varchar(500),
    rourt varchar(500),
    date_init date,
    primary key(id_images)
);

create table products (
    id_products int auto_increment,
    id_category int not null,
    id_images int not null,
    id_user int not null,
    name varchar(50),
    description varchar(500),
    amount int,
    price float,
    date_init date,
    primary key(id_products)
);

create table customers (
    id_customer int auto_increment,
    id_user int not null,
    first_name varchar(200),
    last_name varchar(200),
    address varchar(500),
    email varchar(200),
    phone varchar(200),
    rfc varchar(50),
    primary key(id_customer)
);

create table buy (
    id_buy int not null ,
    id_customer int,
    id_products int,
    price float,
    date_buy date
);

create table articles (
    id_articles int auto_increment primary key,
    id_category int not null,
    id_images int not null,
    id_user int not null,
    name_article varchar(255),
    descripcion text not null,
    amount int not null,
    price DECIMAL(10,2) not null,
    date_init date not null,
    FOREIGN key (id_images REFERENCES images(id_images))
);