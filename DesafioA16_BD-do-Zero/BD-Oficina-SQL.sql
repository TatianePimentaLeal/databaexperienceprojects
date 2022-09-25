-- Criação do banco de dados para cenário da Oficina
-- drop database oficina;
CREATE DATABASE oficina;
use oficina;

-- Table Cliente 
CREATE table clientes(
idCliente int auto_increment primary key,
Endereco varchar(255),
IDSocial varchar(255),
Email varchar(255),
Telefone varchar(45)
);

-- Table Mecânicos
CREATE table mecanicos (
idEquipeMecanicos int auto_increment primary key,
Codigo int,
MNome varchar(45),
MEndereco varchar(45),
Especialidade varchar(255)
);

-- Table Avaliação Time-Veículo

-- Table Veículo
CREATE table veiculo (
idVeiculo int auto_increment primary key,
Modelo varchar(255),
Placa varchar(255),
CNHResponsavel int,
PreAvaliacao varchar(255)
);

-- Table Execução
CREATE table execucao (
idExecucao int auto_increment primary key,
Servico varchar(255),
ServicoPecas varchar(255)
);


-- Table Tabela de Preços
CREATE table tabelaprecos (
idTabelaPrecos int auto_increment primary key,
ValorServicos double,
ValorPecas double
);

-- Table Execução por OS
CREATE table execucaoOS (
idExecucao int,
idOrdemdeServico int,
QuantidadeAcoesExecucao int
);

-- Table Ordem de Serviço
CREATE TABLE ordemServico (
idOrdemdeServico int auto_increment primary key,
DataEmissao date,
ValorTotal double,
StatusOS varchar(45),
DataConclusao date,
FormaPagamento varchar(45),
ConfirmacaoPagamento varchar(45)
);

show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'oficina';