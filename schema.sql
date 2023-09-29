/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id INT primary key NOT NULL,
    name VARCHAR(250),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg FLOAT
);