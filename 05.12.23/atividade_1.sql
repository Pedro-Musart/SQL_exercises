CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;



CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL, -- arqueiro, ladrão, cavaleiro, mago, necromante etc
    atk_especial INT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_classes(nome_classe, atk_especial)
VALUES ("arqueiro", 1000),
("ladrão", 1100),
("cavaleiro", 1300),
("mago", 1200),
("clerigo", 1250),
("piromante", 1200);

Select * from tb_personagens;

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    hp INT NOT NULL,
    atk INT NOT NULL,
    poder VARCHAR(255), -- fogo, água, veneno, pedra, maldição, milagre, null = sem poder
    id_classe BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens(nome, hp, atk, poder, id_classe)
VALUES("Solaire", 400, 275, "Luz", 3),
("Gwyn", 4250, 900, "Luz", 3),
("Siegmeyer of Catarina", 1000, "Determinação", 350, 3),
("Corrupted Artorias", 3750, 800, "Abismo", 3),
("Ornstein", 1642, 700, "Luz", 3),
("Smough", 2645, 850, "Força", 3),
("Quelaag", 3139, 500, "Fogo", 6),
("Soul Of Cinder", 5557, 950, "All", 3),
("Gwindolyn", 2000, 500, "Ilusão", 4),
("Dragonslayer", 3581, 700, "Luz", 1);


SELECT * FROM tb_personagens WHERE atk > 500;
SELECT * FROM tb_personagens WHERE atk BETWEEN 500 AND 1000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome,hp, atk, poder, tb_classes.nome_classe, tb_classes.atk_especial
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT nome,hp, atk, poder, tb_classes.nome_classe, tb_classes.atk_especial
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id WHERE nome_classe = "cavaleiro";


