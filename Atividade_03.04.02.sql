USE curso_sql;

INSERT INTO funcionarios (id, nome, salario, departamento) VALUES 
	(1, 'Fernando', 1400, 'TI');
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES 
	(2, 'Guilherme', 2500, 'Jurídico');   
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES 
	(3, 'Fábio', 1700, 'TI');    
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES 
	(4, 'José', 1800, 'Marketing');
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES 
	(5, 'Isabela', 2200, 'Jurídico');    
    
    
SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE nome = 'José';
SELECT * FROM funcionarios WHERE id = 3;

UPDATE funcionarios SET salario = salario * 1.1 WHERE id = 1;

SET SQL_SAFE_UPDATES = 0;
/*SET SQL_SAFE_UPDATES = 1;*/
UPDATE funcionarios SET salario = salario * 1.1;

UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);

DELETE FROM funcionarios WHERE ID = 4;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES 
	(1, 'Carro', 'SB-0001');
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES 
	(1, 'Carro', 'SB-0002');
    
UPDATE veiculos SET Funcionario_id = 5 WHERE id = 2;
    
SELECT * FROM veiculos;

INSERT INTO salarios (faixa, inicio, fim) VALUES
	('Analista Jr', 1000, 2000),
    ('Analista Pleno', 2000, 4000);
    
SELECT * FROM salarios;

SELECT * FROM funcionarios WHERE funcionarios.salario > 2000;
SELECT nome, salario FROM funcionarios f WHERE f.salario > 2000;
SELECT nome AS 'Funcionário', salario FROM funcionarios f WHERE f.salario > 2000;

SELECT * FROM funcionarios WHERE nome = 'Guilherme'
UNION ALL
SELECT * FROM funcionarios WHERE id = 5;
