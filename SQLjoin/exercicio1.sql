CREATE DATABASE db_pizzaria;
USE db_pizzaria;
CREATE TABLE tb_categorias(

id bigint auto_increment primary key,
descricao varchar(255),
tamanho varchar(10),
borda_recheada boolean
);

CREATE TABLE tb_pizzas(

id bigint auto_increment primary key,
sabor varchar (255),
preco decimal(6,2),
massa varchar (255),
quantidade int,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
	SELECT * FROM tb_categorias;
    INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgada", "Brotinho", true); /*8*/
	INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgada", "Grande", true); /*1*/
    INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgada", "Brotinho", false); /*2*/
    INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Salgada", "Grande", false); /*3*/
    INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce", "Brotinho", true); /*4*/
    INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce", "Grande", true); /*5*/
    INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce", "Brotinho", false); /*6*/
    INSERT INTO tb_categorias (descricao, tamanho, borda_recheada) VALUES ("Doce", "Grande", false); /*7*/
    
    
    SELECT * FROM tb_pizzas;
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Frango c Catupity", 37.99, "Tradicional", 5, 8);
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Marguerita", 43.99, "Pan", 2, 1);
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Toscana", 35.99, "Pan", 1, 2);
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Strogonoff", 57.99, "Tradicional", 4, 3);
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Churros", 35.99, "Tradicional", 4, 4);
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Banana c Canela", 39.99, "Tradicional", 3, 5);
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Chocolate c Morango", 35.99, "Tradicional", 1, 6);
    INSERT INTO tb_pizzas (sabor, preco, massa, quantidade, categoria_id) VALUES ("Romeu e Julieta", 42.99, "Tradicional", 4, 7);
    
    SELECT * FROM tb_pizzas WHERE preco > 45.00;
    SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;
    
    SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
    