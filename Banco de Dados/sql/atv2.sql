CREATE TABLE Departamento(
  codigo int NOT NULL,
  nome varchar (50) NOT NULL,
  CONSTRAINT pk_departamento PRIMARY KEY (codigo)
);


CREATE TABLE Cliente(
	codigo int,
	nome varchar (50) NOT NULL,
  	endereco varchar (150) NOT NULL,
  	cod_departamento int,
  	CONSTRAINT pk_cliente PRIMARY KEY (codigo),
  	CONSTRAINT fk_cliente FOREIGN KEY (cod_departamento) references Departamento (codigo)
);

CREATE TABLE Funcionario (
	codigo int NOT NULL,
  	nome varchar (50) NOT NULL,
  	cpf varchar (20) NOT NULL UNIQUE ,
  	telefone varchar (15) NOT NULL ,
  	cod_departamento int, 
  	CONSTRAINT pk_funcionario PRIMARY KEY (codigo),
  	CONSTRAINT fk_funcionario 
    FOREIGN KEY (cod_departamento) 
    REFERENCES Departamento(codigo)
);

INSERT INTO Departamento (codigo , nome )
VALUES 
(1 ,'Vendas') ,
(2 , 'Recursos Humanos'),
(3, 'Finanças'),
(4 , 'Deposito');


INSERT INTO Cliente (codigo , nome , endereco , cod_departamento)
VALUES
(1 ,'Maria' , 'Rua B' , 1),
(2 , 'Lucas' , 'Rua A' , 2 ),
(3 , 'Carlos' , 'Rua C' , 3),
(4 , 'Marcos' , 'Rua D' , 4);

INSERT INTO Funcionario (codigo , nome , cpf , telefone , cod_departamento)
VALUES 
(1, 'Levi' , '189.326.250-26'  , '85 999999999' , 1 ),
(2, 'Marcio' , '393.988.180-51', '85 111111111' , 2), 
(3 , 'Mario' , '456.829.490-80' , '85 22222222' ,3),
(4 , 'Caio' , '285.769.730-90' , '85 333333333' , 4);