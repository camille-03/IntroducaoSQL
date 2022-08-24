CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_catalogo(
id bigint auto_increment primary key,
nome varchar(20),
cor varchar (20),
valor decimal (7,2),
marca varchar (15)
);
INSERT INTO tb_catalogo (nome, cor, valor, marca) VALUE ("Bolsa", "Preta", 9850.00, "Versace");
SELECT * FROM tb_catalogo;
SELECT * FROM tb_catalogo WHERE valor>500;
SELECT * FROM tb_catalogo WHERE valor<500;
UPDATE tb_catalogo SET valor=9000.00 WHERE id=8;