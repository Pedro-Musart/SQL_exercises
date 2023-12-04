CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    tipo VARCHAR(255),
    preco DECIMAL NOT NULL,
	primary key (id)
);

INSERT INTO tb_produtos(nome, categoria, tipo, preco)
VALUES("Guitarra", "Instrumentos Musicais", "Stratocaster", 1200),
("Teclado", "Instrumentos Musicais", "Digital", 800),
("Violino", "Instrumentos Musicais", "Clássico", 600),
("Amplificador", "Áudio", "Guitarra", 500),
("Microfone", "Áudio", "Condensador", 150),
("Baixo", "Instrumentos Musicais", "Precision", 1000),
("Bateria", "Instrumentos Musicais", "Acústica", 1500),
("Mesa de Som", "Áudio", "Analógica", 700);

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 2000 WHERE id = 5;