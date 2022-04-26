-- EXE01
CREATE DATABASE db_rhcolaboradores;
USE db_rhcolaboradores;


-- EXE02
CREATE TABLE tb_colaboradores (
id BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (20) NOT NULL,
idade INT,
graduação BOOLEAN,
ativo BOOLEAN,
ingles VARCHAR (20),
PRIMARY KEY (id) 
);
 describe tb_colaboradores;
 ALTER TABLE tb_colaboradores ADD COLUMN Salário BIGINT;


-- EXE03

INSERT INTO tb_colaboradores (nome, idade, graduação, ativo, ingles, Salário) VALUES ("Cíntia", 26, FALSE, TRUE, "Básico",1500);
INSERT INTO tb_colaboradores (nome, idade, graduação, ativo, ingles, Salário) VALUES ("Daniel", 37, TRUE, TRUE, "Fluente",5000);
INSERT INTO tb_colaboradores (nome, idade, graduação, ativo, ingles, Salário) VALUES ("Selma", 47, FALSE, TRUE, "Básico",1500);
INSERT INTO tb_colaboradores (nome, idade, graduação, ativo, ingles, Salário) VALUES ("Gabriele", 28, TRUE, TRUE, "Fluente",5000);
INSERT INTO tb_colaboradores (nome, idade, graduação, ativo, ingles, Salário) VALUES ("Fernando", 42, TRUE, TRUE, "Fluente",5000);

-- EXE04

SELECT * FROM tb_colaboradores WHERE salário > 2000;

-- EXE05

SELECT * FROM tb_colaboradores WHERE salário <2000;

-- EXE06

UPDATE tb_colaboradores SET salário = 1800 WHERE id = 2;

SELECT * FROM tb_colaboradores




 

 