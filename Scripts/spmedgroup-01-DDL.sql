CREATE DATABASE SpMedicalGroup;

USE SpMedicalGroup;

CREATE TABLE TipoUsuario(
IdTipo		INT PRIMARY KEY IDENTITY,
Titulo		VARCHAR (20)
);


CREATE TABLE Especialidade(
IdEspecialidade		INT PRIMARY KEY IDENTITY,
NomeEsp				VARCHAR (100)
);

CREATE TABLE Clinica(
IdClinica			INT PRIMARY KEY IDENTITY,
NomeClin			VARCHAR (100),
Endereco			VARCHAR (255)
);

CREATE TABLE Medico(
IdMedico			INT PRIMARY KEY IDENTITY,
NomeMed				VARCHAR (100),
EmailMedico			VARCHAR(100),
CRM					VARCHAR(20),
CNPJ				VARCHAR(20),
RazaoSocial			VARCHAR(20),
IdEspecialidade		INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade),
IdClinica			INT FOREIGN KEY REFERENCES Clinica(IdClinica)
);

CREATE TABLE Usuario(
IdUsuario		INT PRIMARY KEY IDENTITY,
NomeUsu			VARCHAR (100),
Email			VARCHAR (255),
Senha			VARCHAR (20),
IdTipo			INT FOREIGN KEY REFERENCES TipoUsuario(IdTipo)
);

CREATE TABLE Paciente(
IdPaciente			INT PRIMARY KEY IDENTITY,
NomePac 			VARCHAR (100),
Endereco			VARCHAR (255),	
DataNascimento		DATETIME,
RG					CHAR (10),
CPF					CHAR (11),
Email				VARCHAR(100),
IdUsuario			INT FOREIGN KEY REFERENCES Usuario(IdUsuario)

);

CREATE TABLE Consulta(
IdConsulta			INT PRIMARY KEY IDENTITY,
DataConsulta		DATETIME,
Situacao			VARCHAR (20),
IdMedico			INT FOREIGN KEY REFERENCES Medico(IdMedico),
IdPaciente			INT FOREIGN KEY REFERENCES Paciente(IdPaciente)		
);


CREATE TABLE Situacao(
IdSituacao			INT PRIMARY KEY IDENTITY,
QualSit		        Varchar(20),

		
);

ALTER TABLE Consulta
ADD IdSituacao INT FOREIGN KEY REFERENCES Situacao(IdSituacao)




Alter TABLE Consulta
DROP COLUMN Situacao


Alter TABLE  Medico
DROP COLUMN CNPJ;

Alter TABLE  Medico
DROP COLUMN IdClinica;

Alter TABLE  Medico
DROP COLUMN RazaoSocial;

Alter TABLE  Medico
DROP COLUMN Endereco;

TRUNCATE TABLE Consulta;










