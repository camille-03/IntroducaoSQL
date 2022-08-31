CREATE DATABASE db_curso_minha_vida;
USE db_curso_minha_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment primary key,
duracao varchar (255),
esfera varchar(255)
);

CREATE TABLE tb_cursos(
id bigint auto_increment primary key,
nome varchar(255),
preco decimal (7,2),
data_inicio date,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_cursos;

INSERT INTO tb_categoria (esfera, duracao) VALUES ("Idioma", "6 Meses"); /*1*/
INSERT INTO tb_categoria (esfera, duracao) VALUES ("Idioma", "24 Meses"); /*2*/
INSERT INTO tb_categoria (esfera, duracao) VALUES ("Tecnologia", "6 Meses"); /*3*/
INSERT INTO tb_categoria (esfera, duracao) VALUES ("Tecnologia", "24 Meses"); /*4*/

INSERT INTO tb_cursos (nome, data_inicio, preco, categoria_id) VALUES ("Inglês", 2022-09-10, 1800.00, 1);