USE curso_sql;

SELECT * FROM funcionarios;

SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM funcionarios WHERE salario > 2000;
SELECT COUNT(*) FROM funcionarios WHERE salario > 1600 AND departamento = 'Jurídico';

SELECT * FROM funcionarios WHERE salario > 1600 AND Departamento = 'Jurídico';

SELECT SUM(salario) FROM funcionarios;
SELECT SUM(salario) FROM funcionarios WHERE Departamento = 'TI';

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE Departamento = 'TI';

SELECT MAX(salario) FROM funcionarios;
SELECT MAX(salario) FROM funcionarios WHERE Departamento = 'TI';

SELECT MIN(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios WHERE Departamento = 'TI';

SELECT departamento FROM funcionarios;
SELECT DISTINCT(departamento) FROM funcionarios;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios ORDER BY nome;
SELECT * FROM funcionarios ORDER BY nome DESC;

SELECT * FROM funcionarios ORDER BY salario;
SELECT * FROM funcionarios ORDER BY Departamento;
SELECT * FROM funcionarios ORDER BY Departamento, salario;
SELECT * FROM funcionarios ORDER BY Departamento DESC, salario DESC;

SELECT * FROM funcionarios;
SELECT * FROM funcionarios LIMIT 2;
SELECT * FROM funcionarios LIMIT 2 OFFSET 1;
SELECT * FROM funcionarios LIMIT 1, 2;

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE Departamento = 'TI';
SELECT AVG(salario) FROM funcionarios WHERE Departamento = 'Jurídico';

SELECT Departamento, AVG(salario) FROM funcionarios GROUP BY Departamento;
SELECT Departamento, AVG(salario) FROM funcionarios GROUP BY Departamento HAVING AVG (salario) > 2000;

SELECT Departamento, COUNT(*) FROM funcionarios GROUP BY Departamento;

SELECT Departamento, AVG(salario) FROM funcionarios GROUP BY Departamento;
SELECT nome FROM funcionarios WHERE Departamento = 'TI' OR Departamento = 'Jurídico';

SELECT nome FROM funcionarios WHERE Departamento IN 
(
SELECT Departamento FROM funcionarios GROUP BY Departamento HAVING AVG (salario) > 2000
);

SELECT Departamento, AVG(salario) FROM funcionarios GROUP BY Departamento HAVING AVG (salario) > 2000;
