
CREATE DATABASE Projeto_BD;

USE Projeto_BD;

CREATE TABLE TipoUsuario (
IdTipoUsuario INT PRIMARY KEY IDENTITY
,TituloTipoUsuario VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE Usuario(
IdUsuario INT PRIMARY KEY IDENTITY
,Email VARCHAR (255) NOT NULL UNIQUE
,Senha VARCHAR (255) NOT NULL UNIQUE
,IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);





CREATE TABLE Consulta(
	IdConsulta INT PRIMARY KEY IDENTITY
	,DataHorarioConsulta DATETIME2 NOT NULL 
	,Situacao VARCHAR (255) NOT NULL UNIQUE
	,IdPaciente INT FOREIGN KEY REFERENCES Paciente (IdPaciente)
	,IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico)
);

CREATE TABLE Administrador(
	IdAdministrador INT PRIMARY KEY IDENTITY
	,NomeAdministrador VARCHAR (255) NOT NULL UNIQUE
	,DataNascimento DATETIME2 NOT NULL
	,Genero VARCHAR (255) NOT NULL UNIQUE
	,IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Medico(
	IdMedico INT PRIMARY KEY IDENTITY
	,NomeMedico VARCHAR (255) NOT NULL UNIQUE 
	,CNPJ VARCHAR (14) NOT NULL UNIQUE
	,Clinica VARCHAR (255) NOT NULL UNIQUE
	,RazaoSocial VARCHAR (255) NOT NULL UNIQUE
	,IdEspecialidades INT FOREIGN KEY REFERENCES Especilidades (IdEspecialidades)
	,IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
	,IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Paciente(
	IdPaciente INT PRIMARY KEY IDENTITY
	,NomePaciente VARCHAR (255) NOT NULL UNIQUE 
	,DataNacimento DATETIME2 NOT NULL 
	,Telefone DATETIME2 NOT NULL
	,RG DATETIME2 NOT NULL
	,CPF DATETIME2 NOT NULL 
	,IdEndereco INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
	,IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
);

CREATE TABLE Endereco (
IdEndereco INT PRIMARY KEY IDENTITY
,Avenida VARCHAR (255) NOT NULL UNIQUE
,Rua VARCHAR (255) NOT NULL UNIQUE
,Numero DATETIME2 NOT NULL UNIQUE
,CidadeEstado VARCHAR (255) NOT NULL UNIQUE
,CEP DATETIME2 NOT NULL UNIQUE
);

CREATE TABLE Especilidades(
IdEspecialidades INT PRIMARY KEY IDENTITY
,Tipos VARCHAR (255) NOT NULL UNIQUE
);
	

	select * from Especilidades