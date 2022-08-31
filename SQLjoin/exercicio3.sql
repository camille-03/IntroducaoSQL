CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoriass(
id bigint auto_increment primary key,
tipo varchar (100),
receita varchar (100)
);
SELECT * FROM tb_categoriass;

CREATE TABLE tb_produtoss(
id bigint auto_increment primary key,
item varchar (100),
quantidade int,
sessao varchar (100),
preco decimal (7,2),
categoriass_id bigint,

FOREIGN KEY (categoriass_id) REFERENCES tb_categoriass(id)
);
SELECT * FROM tb_produtoss;

SELECT * FROM tb_categoriass;
INSERT INTO tb_categoriass (tipo, receita) VALUES ("Perfumaria", "Dispensável"); /*1*/
INSERT INTO tb_categoriass (tipo, receita) VALUES ("Antibiótico", "Retida"); /*2*/
INSERT INTO tb_categoriass (tipo, receita) VALUES ("Sem Prescrição", "Dispensável"); /*3*/
INSERT INTO tb_categoriass (tipo, receita) VALUES ("Psicotrópico", "Retida"); /*4*/

SELECT * FROM tb_produtoss;
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Shampoo Dove", 6, "Cuidados com o Cabelo", 22.89, 1);
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Clavulin", 3, "Armário de Antibióticos", 132.99, 2);
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Dorflex", 39, "Dor e Febre", 5.95, 3);
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Diazepan", 5, "Sala de Psicotrópicos", 21.63, 4);
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Sabonete íntimo", 5, "Saúde Íntima", 16.99, 1);
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Amoxicilina", 2, "Armário de Antibióticos", 25.29, 2);
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Cimegripe", 26, "Gripes e Resfriados", 11.99, 3);
INSERT INTO tb_produtoss (item, quantidade, sessao, preco, categoriass_id) VALUES ("Depakene", 8, "Sala de Psicotrópicos", 98.99, 4);

SELECT * FROM tb_produtoss WHERE preco < 50.00;
SELECT * FROM tb_produtoss WHERE preco > 5.00 AND preco < 60.00;
SELECT * FROM tb_produtoss WHERE item LIKE "%c%";

SELECT * FROM tb_categoriass INNER JOIN tb_produtoss ON tb_categoriass.id = tb_produtoss.categoriass_id;


