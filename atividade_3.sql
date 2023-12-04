CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    datanascimento DATE NOT NULL,
    cpf BIGINT NOT NULL,
    nota DECIMAL, 
    primary key (id)
);


INSERT INTO tb_estudantes(nome, datanascimento, cpf, nota)
VALUES('João Silva', '2000-01-15', 12345678901, 8.5),
('Maria Oliveira', '1999-05-22', 98765432102, 7.2),
('Carlos Santos', '2001-08-10', 11223344556, 9.0),
('Ana Pereira', '2000-11-30', 99887766543, 6.8),
('Pedro Souza', '1998-04-05', 55443322100, 8.2),
('Luiza Costa', '2002-02-18', 33445566778, 7.5),
('Felipe Almeida', '1999-07-12', 66778899011, 8.9),
('Mariana Lima', '2001-09-25', 22334455667, 7.0);

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 10 WHERE id = 5;

