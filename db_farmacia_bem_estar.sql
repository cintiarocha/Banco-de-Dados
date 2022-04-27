USE  db_farmacia_bem_estar;
-- EXER01

CREATE DATABASE db_farmacia_bem_estar;

CREATE TABLE tb_categorias  (
id BIGINT AUTO_INCREMENT,
higiêne VARCHAR (100),
medicamento VARCHAR (100),
PRIMARY KEY (id)
);
drop table tb_categorias;

-- EXER02

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (100),
preço DECIMAL,
quantidade INT,
categoria_id BIGINT NOT NULL,
PRIMARY KEY (id),

-- EXER03

FOREIGN KEY (categoria_id)  REFERENCES tb_categorias (id)
);

-- EXER04

INSERT INTO tb_categorias (higiêne) VALUES ("shampoo");
INSERT INTO tb_categorias (higiêne) VALUES ("sabonete");
INSERT INTO tb_categorias (medicamento) VALUES ("comprimido");
INSERT INTO tb_categorias (higiêne) VALUES ("pastaDeDente");
INSERT INTO tb_categorias (higiêne) VALUES ("condicionador");

-- EXER05

INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Elseve", 20.00,1,1);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Dove", 30.00,8,2);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Buscopan", 60.00,2,3);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Congate", 80.00,3,4);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Pantene", 80.00,6,1);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Sorriso", 60.00,10,4);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Benegripe", 78.00,3,3);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Elseve", 20.00,1,5);

-- EXER06

SELECT * FROM tb_produtos WHERE preço > 50;

-- EXER07

SELECT * FROM tb_produtos WHERE preço BETWEEN 5 AND 60;

-- EXER08

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- EXER09

SELECT * FROM tb_produtos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

-- EXER10

SELECT  tb_produtos.nome FROM tb_produtos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.medicamento = "comprimido"





























