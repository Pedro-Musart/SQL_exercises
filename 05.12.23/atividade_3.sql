CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
	descricao_categoria VARCHAR(255), 
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao_categoria)
VALUES ("Medicamentos Genéricos", "Opções acessíveis com os mesmos ingredientes ativos das versões de marca, cobrindo uma variedade de condições de saúde."),
("Cuidados com a Saúde Bucal", "Produtos essenciais para a higiene oral, incluindo pastas de dentes, enxaguantes bucais e escovas de dentes."),
("Vitaminas e Suplementos", "Oferece uma variedade de vitaminas, minerais e suplementos nutricionais para apoiar a saúde geral."),
("Cuidados com a Pele e Cosméticos", "Produtos para cuidados diários com a pele, incluindo cremes hidratantes, protetores solares e cosméticos."),
("Primeiros Socorros e Cuidados Pessoais", "Itens essenciais de primeiros socorros, como bandagens e antissépticos, além de produtos para cuidados pessoais e higiene.");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome_produto VARCHAR(255) NOT NULL,
    preco INT NOT NULL,
    prescricao BOOLEAN,
    quantidade INT NOT NULL,
    id_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos(nome_produto, preco, prescricao, quantidade, id_categoria)
VALUES 
("Captopril (Prescrição)", 50, true, 20, 1), -- Medicamentos Genéricos
("Colgate Total Advanced (Prescrição)", 12, true, 30, 2), -- Cuidados com a Saúde Bucal
("Omega-3 Premium", 35, false, 25, 3), -- Vitaminas e Suplementos
("Creme Anti-idade Premium", 50, false, 15, 4), -- Cuidados com a Pele e Cosméticos
("Curativo Estéril (Prescrição)", 15, true, 10, 5), -- Primeiros Socorros e Cuidados Pessoais
("Enxaguante Bucal Forte (Prescrição)", 18, true, 15, 2), -- Cuidados com a Saúde Bucal
("Protetor Solar Avançado", 40, false, 20, 4), -- Cuidados com a Pele e Cosméticos
("Ibuprofeno (Prescrição)", 30, true, 30, 1); -- Medicamentos Genéricos



SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 20;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 30;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";


SELECT nome_produto, preco, prescricao, quantidade, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id;

SELECT nome_produto, preco, prescricao, quantidade, tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id WHERE nome_categoria = "Medicamentos Genéricos";


