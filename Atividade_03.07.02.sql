CREATE USER 'andre'@'200.200.190.190' IDENTIFIED BY 'milani123456';
CREATE USER 'andre'@'localhost' IDENTIFIED BY 'milani123456';
CREATE USER 'andre'@'%' IDENTIFIED BY 'milani123456';

CREATE USER 'andre'@'localhost' IDENTIFIED BY 'milani123456';
GRANT ALL ON curso_sql.* TO 'andre'@'localhost';

CREATE USER 'andre'@'%' IDENTIFIED BY 'andreviagme';
/*GRANT SELECT ON curso_sql.* TO 'andre'@'%';*/
GRANT INSERT ON curso_sql.funcionarios TO 'andre'@'%';

REVOKE INSERT ON curso_sql.funcionarios FROM 'andre'@'%';
REVOKE SELECT ON curso_sql.* FROM 'andre'@'%';

GRANT SELECT ON curso_sql.funcionarios TO 'andre'@'%';
GRANT SELECT ON curso_sql.veiculos TO 'andre'@'%';

REVOKE SELECT ON curso_sql.funcionarios FROM 'andre'@'%';
REVOKE SELECT ON curso_sql.veiculos FROM 'andre'@'%';

REVOKE ALL ON curso_sql.* FROM 'andre'@'%';

DROP USER 'andre'@'%';
DROP USER 'andre'@'localhost';

SELECT USER FROM mysql.user;
SHOW GRANTS FOR 'andre'@'%';

