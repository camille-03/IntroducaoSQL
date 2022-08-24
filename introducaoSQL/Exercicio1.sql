CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
id bigint auto_increment primary key,
nome varchar(50),
apelido varchar(15),
salario decimal (7,2),
setor varchar (15)
);
SELECT * FROM tb_funcionarios;
INSERT INTO tb_funcionarios (nome, apelido, salario, setor) VALUE ("Luis Guerreiro", "Luizão", 1500.00, "Recepção");
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;
UPDATE tb_funcionarios SET salario=1500.00 WHERE id=2;