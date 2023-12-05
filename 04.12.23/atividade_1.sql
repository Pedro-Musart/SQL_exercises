
CREATE DATABASE db_rh_empresa;
USE db_rh_empresa;
CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
		nome VARCHAR(255) NOT NULL,
        cargo VARCHAR(255) NOT NULL,
        salario DECIMAL NOT NULL,
        datanascimento DATE,
	primary key (id)
);

INSERT INTO tb_funcionarios(nome,cargo,salario,datanascimento)
VALUES ("Flavin","Assistente", 1000.00, "2003-12-15"),
("Kevin","QA", 6000.00,"2000-06-26"),
("Isabella","back-end", 10000.00,"2005-01-13"),
("Bianca Akemi","Full Stack Developer", 8000.00,"1998-03-18"),
("Pedro Soares","Full Stack Developer", 20000.00,"2003-11-5");


SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 999999 WHERE id = 10;

SELECT * FROM tb_funcionarios
