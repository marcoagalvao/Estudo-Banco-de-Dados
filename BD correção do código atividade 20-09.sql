CREATE TABLE canteiro (

canteiroId INTEGER AUTO_INCREMENT,

nome CHAR(20) DEFAULT NULL,

luzdiaria DOUBLE(4,3) DEFAULT NULL,

aguadiaria DOUBLE(4,3) DEFAULT NULL,

PRIMARY KEY (canteiroid),

UNIQUE (canteiroid));

 

CREATE TABLE funcionario (

funcId INT AUTO_INCREMENT,

nome CHAR(80) DEFAULT NULL,

idade INT UNSIGNED DEFAULT NULL,

PRIMARY KEY (funcId),

UNIQUE (funcID));

 

CREATE TABLE planta (

id INT AUTO_INCREMENT,

nome CHAR(20) DEFAULT NULL,

luzdiaria DOUBLE(4,3) DEFAULT NULL,

agua DOUBLE(4,3) DEFAULT NULL,

peso DOUBLE(4,3) DEFAULT NULL,

PRIMARY KEY (id),

UNIQUE (id));

 

CREATE TABLE plantio (

plantioId INT AUTO_INCREMENT,

plantaId INT NOT NULL,

funcId INT NOT NULL,

canteiroId INT NOT NULL,

data DATE DEFAULT NULL,

sementes INT(4) DEFAULT 0,

PRIMARY KEY (plantioId),

FOREIGN KEY(plantaId) REFERENCES planta(id),

FOREIGN KEY(funcId) REFERENCES funcionario(funcId),

FOREIGN KEY(canteiroId) REFERENCES canteiro(canteiroId),

UNIQUE(plantioId));

 

CREATE TABLE colhido (

colhidoId INT(11) AUTO_INCREMENT,

plantaId INT(11) NOT NULL,

funcId INT(11) NOT NULL ,

canteiroId INT(11) NOT NULL,

data DATE DEFAULT NULL,

quantidade INT DEFAULT 0,

peso DOUBLE(4,3) DEFAULT 0,

PRIMARY KEY (colhidoId),

FOREIGN KEY(plantaId) REFERENCES planta(id),

FOREIGN KEY(funcId) REFERENCES funcionario(funcId),

FOREIGN KEY(canteiroId) REFERENCES canteiro(canteiroId),

UNIQUE KEY ID (colhidoId));

--Inserindo dados

INSERT INTO funcionario (funcId, nome, idade)
VALUES (1, "Jose", 29);

INSERT INTO canteiro(canteiroId, nome, luzdiaria, aguadiaria)
VALUES(1, "Canteiro novo", 5, 10);

INSERT INTO planta(id, nome, luzdiaria, agua, peso)
VALUES(1, "Rosa", 8.3, 9.8, 2.1);

INSERT INTO plantio(plantioId, plantaId, funcId, canteiroId, data, sementes)
VALUES(1, 1, 1, 1, "2020-03-06", 6);

INSERT INTO colhido(colhidoId, plantaId, funcId, canteiroId, data, quantidade, peso)
VALUES(1, 1, 1, 1,"2021-03-06", 12, 3.1);

--

INSERT INTO funcionario (funcId, nome, idade)
VALUES (2, "Oliver", 24);

INSERT INTO canteiro(canteiroId, nome, luzdiaria, aguadiaria)
VALUES(2, "Canteiro 2", 7, 8);

INSERT INTO planta(id, nome, luzdiaria, agua, peso)
VALUES(2, "Tulipa", 5, 8, 1.7);

INSERT INTO plantio(plantioId, plantaId, funcId, canteiroId, data, sementes)
VALUES(2, 2, 2, 2, "2020-03-08", 5);

INSERT INTO colhido(colhidoId, plantaId, funcId, canteiroId, data, quantidade, peso)
VALUES(2, 2, 2, 2,"2021-03-04", 10, 5);

--

INSERT INTO funcionario (nome, idade)
VALUES ("Borges", 36);

INSERT INTO canteiro(nome, luzdiaria, aguadiaria)
VALUES("Canteiro 3", 4, 6);

INSERT INTO planta(nome, luzdiaria, agua, peso)
VALUES("Margarida", 8, 15, 1);

INSERT INTO plantio(plantaId, funcId, canteiroId, data, sementes)
VALUES(3, 3, 3, "2020-06-08", 5);

INSERT INTO colhido(plantaId, funcId, canteiroId, data, quantidade, peso)
VALUES(3, 3, 3,"2021-06-09", 10, 5);
