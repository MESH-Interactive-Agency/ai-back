DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS floor_materials;
DROP TABLE IF EXISTS ceiling_materials;
DROP TABLE IF EXISTS wall_materials;
DROP TABLE IF EXISTS other_materials;
DROP TABLE IF EXISTS ceiling_products;
DROP TABLE IF EXISTS baffle_units;
DROP TABLE IF EXISTS wall_products;
DROP TABLE IF EXISTS recommended_reverb_times;

CREATE TABLE users (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    user_name TEXT NOT NULL UNIQUE,
    full_name TEXT NOT NULL,
    password TEXT NOT NULL UNIQUE,
    date_created TIMESTAMP DEFAULT now() NOT NULL,
    date_modified TIMESTAMP
);

CREATE TABLE recommended_reverb_times (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    min FLOAT NOT NULL,
    max FLOAT NOT NULL
);

CREATE TABLE floor_materials (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    hz125 FLOAT NOT NULL,
    hz250 FLOAT NOT NULL,
    hz500 FLOAT NOT NULL,
    hz1000 FLOAT NOT NULL,
    hz2000 FLOAT NOT Null,
    hz4000 FLOAT NOT NULL,
    NRC FLOAT NOT NULL
);

CREATE TABLE ceiling_materials (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    hz125 FLOAT NOT NULL,
    hz250 FLOAT NOT NULL,
    hz500 FLOAT NOT NULL,
    hz1000 FLOAT NOT NULL,
    hz2000 FLOAT NOT Null,
    hz4000 FLOAT NOT NULL,
    NRC FLOAT NOT NULL

);

CREATE TABLE wall_materials (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    hz125 FLOAT NOT NULL,
    hz250 FLOAT NOT NULL,
    hz500 FLOAT NOT NULL,
    hz1000 FLOAT NOT NULL,
    hz2000 FLOAT NOT Null,
    hz4000 FLOAT NOT NULL,
    NRC FLOAT NOT NULL

);

CREATE TABLE other_materials (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    hz125 FLOAT NOT NULL,
    hz250 FLOAT NOT NULL,
    hz500 FLOAT NOT NULL,
    hz1000 FLOAT NOT NULL,
    hz2000 FLOAT NOT Null,
    hz4000 FLOAT NOT NULL,
    NRC FLOAT NOT NULL

);

CREATE TABLE ceiling_products (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    w FLOAT,
    l FLOAT,
    hz125 FLOAT NOT NULL,
    hz250 FLOAT NOT NULL,
    hz500 FLOAT NOT NULL,
    hz1000 FLOAT NOT NULL,
    hz2000 FLOAT NOT Null,
    hz4000 FLOAT NOT NULL,
    NRC FLOAT NOT NULL
);

CREATE TABLE wall_products (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    w FLOAT,
    l FLOAT,
    hz125 FLOAT NOT NULL,
    hz250 FLOAT NOT NULL,
    hz500 FLOAT NOT NULL,
    hz1000 FLOAT NOT NULL,
    hz2000 FLOAT NOT Null,
    hz4000 FLOAT NOT NULL,
    NRC FLOAT NOT NULL
);

CREATE TABLE baffle_units (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    descript TEXT NOT NULL,
    w FLOAT,
    l FLOAT,
    hz125 FLOAT NOT NULL,
    hz250 FLOAT NOT NULL,
    hz500 FLOAT NOT NULL,
    hz1000 FLOAT NOT NULL,
    hz2000 FLOAT NOT Null,
    hz4000 FLOAT NOT NULL,
    NRC FLOAT NOT NULL
);
