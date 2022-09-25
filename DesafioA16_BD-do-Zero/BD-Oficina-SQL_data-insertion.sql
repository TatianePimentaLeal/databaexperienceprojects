-- Insersão de dados e queries
use oficina;
show tables;

-- Clientes data - Endereco, IDSocial, Email, Telefone
insert into clientes (Endereco, IDSocial, Email, Telefone) values
	('Rua Um 90','37721275920','emailum@gmail.com','2198764567'),
	('Rua Dois 55','26442822338','email@gmail.com','2188764567'),
	('Rua Tres 67','65467748289','emailteste@gmail.com','2144764567'),
	('Rua Quatro 28','23251146947','emailplus@gmail.com','2178764567');

-- Endereco, IDSocial, Email, Telefone
insert into clientes (Endereco, IDSocial, Email, Telefone) values
	('Rua Um 90','37721275920','emailum@gmail.com','2198764567'),
	('Rua Dois 55','26442822338','email@gmail.com','2188764567'),
	('Rua Tres 67','65467748289','emailteste@gmail.com','2144764567'),
	('Rua Quatro 28','23251146947','emailplus@gmail.com','2178764567');

insert into mecanicos (Codigo, MNome, MEndereco, Especialidade) values
	(1, 'Pedro','Rua Zero','Lanterneiro'),
	(2, 'Miranda','Rua Das Flores','Funileiro'),
	(3, 'Rafael','Rua Machado','Pintor'),
	(4, 'Luiz','Rua Trinta','Retifica');	

insert into veiculo (Modelo, Placa, CNHResponsavel,PreAvaliacao) values
	('Celta Cinza', 'U879Z976', 0987, 'Desamassar'),
	('Gol Branco', 'X8D9Z9789', 6543, 'Pintar'),
	('Passat Preto', 'AB9Z976', 8754, 'Retificar');

insert into execucao (Servico, ServicoPecas) values
	('Desamassar','Alavanca'),
	('Pintar','Troca de óleo');

insert into tabelaprecos (ValorServicos, ValorPecas) values
	(200.00, 700.00),
	(500.00, 150.00);

insert into execucaoOS (idExecucao, QuantidadeAcoesExecucao) values
	(1, 3),
	(2, 2);

insert into ordemServico (DataEmissao, ValorTotal, StatusOS, DataConclusao, FormaPagamento, ConfirmacaoPagamento) values
	(18/09/2021, 200.00, 'Fechado', 25/09/2021, 'Débito','Efetuado');


-- Recuperações simples com SELECT Statement;
select * from veiculo;

-- Filtros com WHERE Statement;
select MNome from mecanicos where MNome = 'Pedro';

-- Defina ordenações dos dados com ORDER BY;
select * from clientes order by Endereco;

-- Defina ordenações dos dados com GROUP BY;
select * from mecanicos group by Especialidade;


