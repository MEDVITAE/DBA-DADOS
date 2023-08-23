CREATE DATABASE vitae;

USE vitae;

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(100)
);

CREATE TABLE hospital (
idHospital INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
cnpj CHAR(14)
);

CREATE TABLE agenda (
idAgenda INT PRIMARY KEY AUTO_INCREMENT,
horario DATETIME,
dia DATE,
fkUsuario INT, FOREIGN KEY
(fkUsuario) REFERENCES usuario(idUsuario),
fkHospital INT, FOREIGN KEY
(fkHospital) REFERENCES hospital(idHospital)
);

CREATE TABLE endereco (
idEndereco INT PRIMARY KEY AUTO_INCREMENT,
cidade VARCHAR(45),
bairro VARCHAR(45),
cep CHAR(8),
logradouro VARCHAR(45),
rua VARCHAR(45),
numero INT,
fkUsuario INT, FOREIGN KEY
(fkUsuario) REFERENCES usuario(idUsuario),
fkHospital INT, FOREIGN KEY
(fkHospital) REFERENCES hospital(idHospital)
);

CREATE TABLE documento (
idDocumento INT PRIMARY KEY AUTO_INCREMENT,
rg VARCHAR(45),
cpf CHAR(14),
endereco VARCHAR(45),
foto VARCHAR(45),
fkUsuario INT, FOREIGN KEY
(fkUsuario) REFERENCES usuario(idUsuario)
);

CREATE TABLE caracteristicas (
idCaracteristicas INT PRIMARY KEY AUTO_INCREMENT,
peso FLOAT,
altura FLOAT,
tattooagem TINYINT,
cpf CHAR(14),
telefone CHAR(11),
tipo VARCHAR(45),
sexo VARCHAR(45),
data_nascimento DATE,
homocentro VARCHAR(45),
cre VARCHAR(45),
fkUsuario INT, FOREIGN KEY
(fkUsuario) REFERENCES usuario(idUsuario)
);

CREATE TABLE sangue (
idSangue INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(3),
plasma FLOAT,
fkHospital INT, FOREIGN KEY
(fkHospital) REFERENCES hospital(idHospital)
);

CREATE TABLE doacao (
idDoacao INT PRIMARY KEY AUTO_INCREMENT,
quantidade CHAR(45),
fkAgenda INT, FOREIGN KEY
(fkAgenda) REFERENCES agenda(idAgenda),
fkSangue INT, FOREIGN KEY
(fkSangue) REFERENCES sangue(idSangue)
);












 