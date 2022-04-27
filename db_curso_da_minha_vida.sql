USE db_curso_da_minha_vida;

CREATE DATABASE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id BIGINT (2) AUTO_INCREMENT,
ingles VARCHAR (100),
espanhol VARCHAR (100),
PRIMARY KEY (id)
);

USE db_curso_da_minha_vida;

CREATE TABLE tb_cursos  (
id BIGINT  AUTO_INCREMENT,
nome VARCHAR (100),
hora VARCHAR (100),
nivel VARCHAR (100),
valor INT,
categoria_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES tb_categorias (id) 
);


INSERT INTO tb_categorias (ingles) VALUES ("sim");
INSERT INTO tb_categorias (ingles) VALUES ("não");
INSERT INTO tb_categorias (espanhol) VALUES ("sim");
INSERT INTO tb_categorias (espanhol) VALUES ("não");

INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("ingles", "manhã","basico", 400, 1);
INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("ingles", "noite","intermediario", 600, 1);
INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("ingles", "noite","avançado", 1000, 1);
INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("espanhol", "noite","intermediario", 500, 2);
INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("ingles", "noite","intermediario", 600, 1);
INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("ingles", "noite","intermediario", 600, 1);
INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("ingles", "noite","intermediario", 600, 1);
INSERT INTO tb_cursos (nome,hora,nivel,valor,categoria_id) VALUES ("ingles", "noite","intermediario", 600, 1);

SELECT * FROM tb_cursos WHERE valor > 500;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%i%";

SELECT * FROM tb_cursos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_cursos.categoria_id;

SELECT  tb_cursos.nome FROM tb_cursos
INNER JOIN  tb_categorias ON tb_categorias.id = tb_cursos.categoria_id
WHERE tb_cursos.nivel = "intermediario"













SELECT * FROM tb_pizzas WHERE valor > 45;

drop database db_pizzaria_legal;