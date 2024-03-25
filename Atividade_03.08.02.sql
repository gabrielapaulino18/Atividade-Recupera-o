USE curso_sql;

SHOW ENGINES;

CREATE TABLE contas_bancarias (
    Id INT UNSIGNED NULL AUTO_INCREMENT,
    Titular VARCHAR(45) NOT NULL,
    Saldo DOUBLE NOT NULL,
    PRIMARY KEY (Id)
)ENGINE = InnoDB;

INSERT INTO contas_bancarias (Titular, Saldo) VALUES 
    ('André', 1000),
    ('Carlos', 2000);

SELECT * FROM contas_bancarias;

START TRANSACTION;
UPDATE contas_bancarias SET Saldo = Saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET Saldo = Saldo + 100 WHERE id = 2;
ROLLBACK;

START TRANSACTION;
UPDATE contas_bancarias SET Saldo = Saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET Saldo = Saldo + 100 WHERE id = 2;
COMMIT;