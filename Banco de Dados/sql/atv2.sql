CREATE TABLE Departamento(
  codigo int NOT NULL,
  nome varchar (50) NOT NULL,
  CONSTRAINT pk_departamento PRIMARY KEY (codigo)
);


CREATE TABLE Cliente(
	codigo int,
	nome varchar (50) not null,
  	endereco varchar (150) not null,
  	cod_departamento int,
  	CONSTRAINT pk_cliente PRIMARY KEY (codigo),
  	CONSTRAINT fk_cliente FOREIGN KEY (cod_departamento) references Departamento (codigo)
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