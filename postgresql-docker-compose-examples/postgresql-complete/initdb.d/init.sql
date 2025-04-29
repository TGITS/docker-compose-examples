CREATE TABLE pokemon (
    num INT,
    name TEXT,
    type1 TEXT,
    type2 TEXT,
    total INT,
    hp INT,
    attack INT,
    defense INT,
    special_attack INT,
    special_defense INT,
    speed INT,
    generation INT,
    legendary BOOLEAN
);

COPY pokemon
FROM '/docker-entrypoint-initdb.d/pokemon.csv'
DELIMITER ','
CSV HEADER;