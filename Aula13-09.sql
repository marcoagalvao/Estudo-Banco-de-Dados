CREATE DATABASE empresa_A;
USE empresa_A;
CREATE TABLE salario(
	cod int, 
    gratificacao decimal(6,2),
    valor decimal(7,2),
    PRIMARY KEY (cod)
);
CREATE TABLE colaborador(
	id int AUTO_INCREMENT,
    nome varchar(50) NOT NULL,
    sexo char(1) CHECK (sexo in ('F','M')),
    cpf int NOT NULL,
    cod int,
    PRIMARY KEY(id),
    UNIQUE (cpf),
    FOREIGN KEY (cod) REFERENCES salario(cod)
);

-- Inserindo os dados

INSERT INTO salario (cod, gratificacao, valor)
VALUES(101,250.00,3000.95);

INSERT INTO salario
VALUES(102,500.00,5600.00);

INSERT INTO salario(cod)
VALUES (103);

INSERT INTO salario (valor, cod)
VALUES(1500.90, 105);

SELECT * FROM salario;

INSERT INTO colaborador(id, nome, cpf, sexo, cod)
VALUES(10,'João', 987,'M', 105);

INSERT INTO colaborador(id, nome, cpf, sexo, cod)
VALUES(11,'João', 765,'M', 105); -- Chave estrangeira pode se repetir em outros INSERTs, para atribuir o mesmo salario para duas pessoas

INSERT INTO colaborador(nome, cpf, sexo, cod)
VALUES('Maria', 111,'F', 103); -- Foi removido o ID e ainda funciona devido o auto increment

INSERT INTO colaborador(nome, cpf, sexo, cod)
VALUES('Tacila', 222,'F', 102);

--Atualizando dados:
-- set sql_safe_updates=0;

UPDATE salario SET valor=4000.00 WHERE cod=101;

UPDATE salario SET valor=valor*1.2 WHERE valor < 2500.00;

UPDATE salario SET valor=1000;

-- Apagando dados tabela

DELETE FROM salario where cod=101;

