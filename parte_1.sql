CREATE DATABASE IF NOT EXISTS kopa_db;

DROP TABLE IF EXISTS kopas;

CREATE TABLE IF NOT EXISTS kopas(
    id         BIGSERIAL    PRIMARY KEY,
    selecao    VARCHAR(128) UNIQUE,
    qnt_copas  SMALLINT
);



INSERT INTO
    kopas(selecao,qnt_copas)
VALUES
    ('Brasil', 5),
    ('Alemanha', 5),
    ('Itália', 4),
    ('Argentina', 2),
    ('França', 2),
    ('Uruguai', 2),
    ('Inglaterra', 1),
    ('Espanha', 1),
    ('Japão', 1);

SELECT * FROM kopas;   


UPDATE
    kopas 
SET 
    qnt_copas = 4
WHERE
    selecao LIKE 'Alemanha';


DELETE
FROM
	kopas 
WHERE
	selecao LIKE 'Japão';


SELECT * FROM kopas;