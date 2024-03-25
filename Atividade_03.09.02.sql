USE curso_sql;

CREATE TABLE pedidos (
	Id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Descricao VARCHAR(100) NOT NULL,
    Valor DOUBLE NOT NULL DEFAULT '0',
    Pago VARCHAR(3) NOT NULL DEFAULT 'Não',
    PRIMARY KEY (Id)
);

INSERT INTO pedidos (descricao, valor) VALUES
	('Tv', 3000),
    ('Geladeira', 1400),
    ('DVD Player', 300);
    
SELECT * FROM pedidos;
CALL limpa_pedidos();


CREATE TABLE estoque (
	Id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Descricao VARCHAR(50) NOT NULL,
    Quantidade INT NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TRIGGER gatilho_limpa_pedidos
BEFORE INSERT 
ON estoque
FOR EACH ROW
CALL limpa_pedidos();
SELECT * FROM pedidos;
UPDATE pedidos SET pago = 'Sim' WHERE id = 2;

INSERT INTO pedidos (descricao, valor) VALUES
	('Forno', 3);
    
SELECT * FROM pedidos;
SELECT * FROM estoque;