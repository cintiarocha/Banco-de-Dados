USE  db_construindo_vidas;

CREATE DATABASE  db_construindo_vidas;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
ferramentas VARCHAR (100),
materiaisDeConstrução VARCHAR (100),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (100),
quantidade INT,
preço DECIMAL,
categoria_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id)  REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (ferramentas) VALUES ("FerramentaManual");
INSERT INTO tb_categorias (ferramentas) VALUES ("FerramentaMedição");
INSERT INTO tb_categorias (materiaisDeConstrução) VALUES ("Aços");
INSERT INTO tb_categorias (materiaisDeConstrução) VALUES ("BarreirasDeProteção");
INSERT INTO tb_categorias (materiaisDeConstrução) VALUES ("Madeira");

INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Alicate", 89.00,1,1);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Vergalhão", 52.90,1,3);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Pallet", 104.90,1,5);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Amprimito", 755.00,1,2);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Suporte", 24.90,1,4);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("Canivete", 69.90,1,1);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("ColherPedreiro", 24.90,1,1);
INSERT INTO tb_produtos (nome,preço, quantidade, categoria_id) VALUES ("KitMartelo", 43.90,1,1);


SELECT * FROM tb_produtos WHERE preço > 100;

SELECT * FROM tb_produtos WHERE preço BETWEEN 70 AND 150;


SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT  tb_produtos.nome FROM tb_produtos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.Ferramentas = "FerramentaManual"



















