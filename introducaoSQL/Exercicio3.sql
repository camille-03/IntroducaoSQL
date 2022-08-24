/*Atividade prática - Banco de dados Relacional - ESCOLA*/
/*comando de criação de banco de dados*/
CREATE DATABASE db_escola;

/*selecione o banco de dados a ser usado*/
USE db_escola;

/*comando de criação de tabela*/
CREATE TABLE tb_alunes(

id bigint auto_increment primary key,
nome varchar(50),
data_nascimento date,
turma int,
nota decimal(4,2) /*4 corresponde ao número total de caracteres e 2 corresponde a quantidade de caracteres depois da vírgula*/
);

SELECT * FROM tb_alunes;
/*não insere o id pq o próprio sql identifica sozinho, inserir os valores das variaveis na mesma ordem, varchar e date entre aspas, decimais separados por pontos */
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Camille Brito","2003-07-03", 57, 9.7);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Isabella Brandão","1999-10-31", 57, 10.0);
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica Lopes","1997-09-17", 57, 5.8);

/*seleciona e mostra todos os dados da tabela*/
SELECT * FROM tb_alunes;

/*seleciona e mostra os dados da tabela que estão específicados*/
SELECT * FROM tb_alunes WHERE nota > 7;

SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 7 WHERE id=3;





