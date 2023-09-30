/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id INT primary key NOT NULL,
    name TEXT,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg FLOAT
);
ALTER TABLE animals
ADD COLUMN species VARCHAR(100);