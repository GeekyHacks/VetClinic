/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg, species) VALUES
(1, 'Agumon', '2020-02-03', 0, TRUE, 10.23),
(2, 'Gabumon', '2018-11-15', 2, TRUE, 8),
(3, 'Pikachu', '2021-01-07', 1, FALSE, 15.04),
(4, 'Devimon', '2017-05-12', 5, TRUE, 11),
(5, 'Charmander', '2020-02-08', 0, FALSE, -11, NULL),
(6, 'Plantmon', '2021-11-15', 2, TRUE, -5.7, NULL),
(7, 'Squirtle', '1993-04-02', 3, FALSE, -12.13, NULL),
(8, 'Angemon', '2005-06-12', 1, TRUE, -45, NULL),
(9, 'Boarmon', '2005-06-07', 7, TRUE, 20.4, NULL),
(10, 'Blossom', '1998-10-13', 3, TRUE, 17, NULL),
(11, 'Ditto', '2022-05-14', 4, TRUE, 22, NULL);

/* populate data in the owners table*/
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),('Jennifer Orwell', 19),('Bob', 45),('Melody Pond', 77),('Dean Winchester', 14),('Jodie Whittaker', 38);
/* populate data in the species table*/
INSERT INTO species (name)
VALUES ('Pokemon'),('Digimon');


/* Update the animals table to have the right suffix for species*/
UPDATE animals SET species_id = CASE
    WHEN name LIKE '%mon' THEN (SELECT id FROM species WHERE name = 'Digimon')
    ELSE (SELECT id FROM species WHERE name = 'Pokemon')
  END;
  