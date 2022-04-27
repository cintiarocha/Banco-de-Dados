USE db_cidade_das_carnes;

CREATE DATABASE db_cidade_das_carnes;

-- EXE01
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
bovino VARCHAR (100),
suino VARCHAR (100),
PRIMARY KEY (id)
);

-- EXE02

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100),
valor DECIMAL,
quantididade INT,
categoria_id BIGINT NOT NULL,
PRIMARY KEY (id),

-- EXER03
FOREIGN KEY (categoria_id)  REFERENCES tb_categorias (id)
);

-- EXE04

INSERT INTO tb_categorias (bovino) VALUES ("com osso");
INSERT INTO tb_categorias (bovino) VALUES ("sem osso");
INSERT INTO tb_categorias (suino) VALUES ("segunda");
INSERT INTO tb_categorias (bovino) VALUES ("premium");
INSERT INTO tb_categorias (bovino) VALUES ("segunda");

-- EXE05
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("bacon", 60.00,1,3);
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("Acém", 80.00,1,2);
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("Costela", 100.00,1,1);
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("Paleta", 80.00,1,3);
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("Picanha", 180.00,1,4);
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("Patinho", 70.00,1,5);
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("CoxãoMole", 60.00,1,5);
INSERT INTO tb_produtos (nome,valor, quantididade, categoria_id) VALUES ("CoxãoDuro", 40.00,1,5);

-- EXE06
SELECT * FROM tb_produtos WHERE valor > 50;

-- EXER07

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

-- EXER08

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- EXER09

SELECT * FROM tb_produtos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

-- EXER10

SELECT  tb_produtos.nome FROM tb_produtos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.suino = "segunda"



