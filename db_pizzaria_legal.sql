-- ATIVIDADE02

USE db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT  AUTO_INCREMENT,
doce BOOLEAN,
salgado BOOLEAN,
PRIMARY KEY (id)
);

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id BIGINT  AUTO_INCREMENT,
sabor VARCHAR (30),
grande BOOLEAN,
pequena BOOLEAN,
borda BOOLEAN,
valor BIGINT,
categoria_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);


INSERT INTO tb_categorias (doce,salgado) VALUES (TRUE,FALSE);
INSERT INTO tb_categorias (doce,salgado) VALUES (TRUE,FALSE);
INSERT INTO tb_categorias (doce,salgado) VALUES (FALSE,TRUE);
INSERT INTO tb_categorias (doce,salgado) VALUES (FALSE,TRUE);
INSERT INTO tb_categorias (doce,salgado) VALUES (FALSE,TRUE);
INSERT INTO tb_categorias (doce,salgado) VALUES (FALSE,TRUE);
INSERT INTO tb_categorias (doce,salgado) VALUES (FALSE,TRUE);
INSERT INTO tb_categorias (doce,salgado) VALUES (TRUE,FALSE);



INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valor,categoria_id) VALUES ("beijinho", FALSE, TRUE, FALSE, 47,1);
INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valor,categoria_id) VALUES ("beijinho", FALSE, TRUE, FALSE, 45,2);
INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valor,categoria_id) VALUES ("marguerita", TRUE, FALSE, TRUE, 46,3);
INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valor,categoria_id) VALUES ("calabresa", TRUE, FALSE, TRUE, 47,4);
INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valo,categoria_idr) VALUES ("baiana", FALSE, TRUE, FALSE, 52,5);
INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valor,categoria_id) VALUES ("frango", FALSE, TRUE, FALSE, 55,6);
INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valor,categoria_id) VALUES ("frangocatupiry", TRUE, TRUE, FALSE, 56,7);
INSERT INTO tb_pizzas (sabor,grande,pequena,borda,valor,categoria_id) VALUES ("chocolate", FALSE, TRUE, FALSE, 60,8);


SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50  AND  100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%" ;

SELECT * FROM tb_pizzas
INNER JOIN  tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
 
SELECT  tb_pizzas.sabor FROM tb_pizzas
INNER JOIN  tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.doce



