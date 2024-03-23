CREATE DATABASE curso_sql;

USE curso_sql;

CREATE TABLE funcionarios (
	Id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Salario DOUBLE NOT NULL DEFAULT '0',
    Departamento VARCHAR(45) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE veiculos (
	Id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Funcionario_id INT UNSIGNED DEFAULT NULL,
    Veiculo VARCHAR(45) NOT NULL DEFAULT '',
    Placa VARCHAR(10) NOT NULL DEFAULT '',
    PRIMARY KEY (Id),
    CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY (Funcionario_Id) REFERENCES funcionarios (Id)
);

CREATE TABLE salarios (
	Faixa VARCHAR(45) NOT NULL,
    Inicio DOUBLE NOT NULL,
    Fim DOUBLE NOT NULL,
    PRIMARY KEY (faixa)
);

ALTER TABLE funcionarios CHANGE COLUMN nome nome_func VARCHAR(45) NOT NULL;
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome VARCHAR(45) NOT NULL;

DROP TABLE salarios;

CREATE INDEX departamentos ON funcionarios (departamento);
CREATE INDEX nomes ON funcionarios (nome(6));