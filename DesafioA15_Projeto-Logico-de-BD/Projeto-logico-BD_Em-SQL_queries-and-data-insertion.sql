-- Insersão de dados e queries
use ecommerce;

show tables;
-- idClient, Fname, Minit, Lname, CPF, Address
insert into clients (Fname, Minit, Lname, CPF, Address)
	values('Thor','O','Odinson','33423445609','Rua Valhala 7, Centro - Asgard'),
		  ('Tony','S','Stark','98798790867','Torre dos Vingadores 45 andar, Nova Iorque - Nova Iorque'),
          ('Steve','R','Rogers','54378694088','Rua Brooklyn 13, Nova Iorque - Nova Iorque'),
          ('Clint','B','Barton','98746598700','Rua Moldavia 30, Moldavia - Europa'),
          ('Natasha','S','Romanov','87624315628','Rua Shield 45, California - Estados Unidos'),
		  ('Bruce','H','Banner','98709823477','Rua De las Flores 77, Cancun - México');

-- idProduct, Pname, Category('Eletronic', 'Clothing','Food'), PDescription, PValue
insert into product (Pname, Category, PDescription, PValue) values
	('Fone de ouvido','Eletronic','null','200'),
    ('Laptop','Eletronic','null','2000'),
    ('Bermuda','Clothing','null','50'),
    ('Energético','Food','null','9');
    
-- select * from clients;
-- select * from product;

-- idOrder, idOrderClient, OrdersStatus, OrdersDescription, Shipping
	-- select * from orders;
	-- delete from orders where idOrder in (1, 2, 3, 4);
insert into orders (idOrderClient, OrdersStatus, OrdersDescription, Shipping) values
	(1, default, 'Compra via app', null),
    (2, default, 'Compra via app', 1),
    (3,'Confirmed', null, null),
    (4, 'Cancelled','Compra via app', 2);


-- table payments - idClient, idPayment, PaymentForms, enum('Debit', 'Credit', 'PIX', 'Bank payment')
                  -- idClient, idPayment, PaymentForms
insert into payments (idClient, idPayment, PaymentForms) values
			(1, 1, 'Debit'),
            (2, 2, 'PIX');


-- table productStorage - idProdStorage (NO), StorageLocation, Quantity (default 0)
                        -- StorageLocation, Quantity (default 0)
insert into productStorage (StorageLocation, Quantity) values
			('Rio de Janeiro',1000),
            ('São Paulo',500),
            ('Curitiba', 2000),
            ('São Paulo',350);


-- table supplier - idSupplier (NO), SupplierSocialName not null, SupplierCNPJ not null, SupplierContact not null
                  -- SupplierSocialName not null, SupplierCNPJ not null, SupplierContact not null
insert into supplier (SupplierSocialName, SupplierCNPJ, SupplierContact) values 
			('Magazine Luiza', 29681841000193, '2198762345'),
            ('Nubank', 03412966000124, '2197640987'),
            ('Modal Mais', 33974305000153, '2198762340');
select * from supplier;


-- table seller - idSeller(NO), SellerSocialName not null, SellerAbstractName, SellerCNPJ, SellerCPF, SellerContact not null, SellerLocation
                -- SellerSocialName not null, SellerAbstractName, SellerCNPJ, SellerCPF, SellerContact not null, SellerLocation
insert into seller (SellerSocialName, SellerAbstractName, SellerCNPJ, SellerCPF, SellerContact, SellerLocation) values
			('Empresas Bahia', 'Casas Bahia', 56639201000198, 334768932, '4409873546','Sergipe'),
            ('Memaid Company', 'Starbucks', 63637552000125, 634767932, '2135467285', 'Tocantins'),
            ('Empresa de Alimentos Ltda', 'Supermercados Guanabara', 97901926000190, 234767932, '6698762543', 'Acre');
select * from seller;


-- table productSeller - idPSeller, idPProduct, RelatedQuantity (default 1)
                       -- idPSeller, idPProduct, RelatedQuantity (default 1)
insert into productSeller (idPSeller, idPProduct, RelatedQuantity) value
			(1, 6, 80),
            (2, 7, 10);


select * from orders;
-- table productOrder - idPOProduct, idPOOrder, POQuantity (default 1), POStatus('Available','Not available') default 'Available'
                      -- idPOProduct, idPOOrder, POQuantity (default 1), POStatus('Available','Not available') default 'Available'
insert into productOrder (idPOProduct, idPOOrder, POQuantity, POStatus) values
			(1, 5, 2, default),
            (2, 5, 1, default),
            (3, 6, null, 'Not available');


-- table storageLocation - idLProduct, idLStorage, Location not null, StorageStatus('Available', 'Not available') default 'Available'
                         -- idLProduct, idLStorage, Location not null, StorageStatus('Available', 'Not available') default 'Available'
insert into storageLocation (idLProduct, idLStorage, Location, StorageStatus) values
			(1, 2, 'RJ', default),
            (2, 6, 'SP', default);


-- table productSupplier - idPsSupplier, idPsProduct, PsQuantity not null
                         -- idPsSupplier, idPsProduct, PsQuantity not null
insert into productSupplier (idPsSupplier, idPsProduct, PsQuantity) values
			(1, 1, 500),
            (1, 2, 400),
            (2, 4, 1000),
            (3, 3, 5),
            (2, 5, 10);
    
    
    
-- Queries do desafio
-- SELECT
select * from productSupplier;
select count(*) from clients;

-- WHERE
select * from clients c, orders o where c.idClient = idOrderClient;
select Fname, Lname, idOrder, OrdersStatus from clients c, orders o where c.idClient = idOrderClient;

-- ORDER BY
select * from clients order by Lname;

-- GROUP BY
select * from productStorage group by StorageLocation;

-- HAVING
select PValue  
from product
where PValue >= 500
group by PValue
having count(*) >= 100;