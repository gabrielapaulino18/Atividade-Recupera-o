USE curso_sql;

SELECT * FROM funcionarios;
SELECT * FROM veiculos;

SELECT * FROM funcionarios INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id;
SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;

SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION ALL
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES
	(NULL, "Moto", "SB-0003");
    
CREATE TABLE cpfs (
	Id INT UNSIGNED NOT NULL,
    Cpf VARCHAR(14) NOT NULL,
    PRIMARY KEY (Id),
    CONSTRAINT fk_cpf FOREIGN KEY (Id) REFERENCES funcionarios (id)
);

INSERT INTO cpfs (id, cpf) VALUES
	(1, '111.111.111-11'),
    (2, '222.222.222-22'),
    (3, '333.333.333-33'),
    (5, '555.555.555-55');
    
SELECT * FROM cpfs;

SELECT * FROM funcionarios INNER JOIN cpfs ON funcionarioS.id = cpfs.id;
SELECT * FROM funcionarios INNER JOIN cpfs USING(ID);

CREATE TABLE clientes (
	Id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Quem_indicou INT UNSIGNED,
    PRIMARY KEY (Id),
    CONSTRAINT fik_quem_indicou FOREIGN KEY (quem_indicou) REFERENCES clientes(Id)
);

INSERT INTO clientes (id, nome, quem_indicou) VALUES
	(1, 'Andre', NULL),
    (2, 'Samuel', 1),
    (3, 'Carlos', 1),
    (4, 'Rafael', 1);
    
SELECT * FROM CLIENTES;

SELECT a.nome AS Cliente, b.nome AS "Quem Indicou" 
FROM clientes a JOIN clientes b ON  a.quem_indicou = b.id;

SELECT * FROM funcionarios 
INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id 
INNER JOIN cpfs ON cpfs.id = Funcionarios.id;

SELECT * FROM funcionarios WHERE salario >= 1700;

CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 1700;

SELECT * FROM funcionarios_a;
UPDATE funcionarios SET salario = 1500 WHERE id = 3;

DROP VIEW funcionarios_a;
CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 1700;