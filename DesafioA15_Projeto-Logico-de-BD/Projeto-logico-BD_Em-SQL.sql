-- Criação do banco de dados para cenário de E-commerce
-- drop database ecommerce;
CREATE DATABASE ecommerce;
use ecommerce;

-- Tabela cliente
CREATE table clients (
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(255),
    Birthday date,
    Contact varchar(15),
    constraint unique_cpf_client unique (CPF)
);
-- desc clients;

alter table clients auto_increment=1;

-- Tabela produto
CREATE table product (
	idProduct int auto_increment primary key,
    Pname varchar(15) not null,
	Category enum('Eletronic', 'Clothing','Food') not null,
    PDescription varchar(20) not null,
    PValue varchar(20) not null
);

-- Tabela pedido
-- drop table orders;
CREATE table orders (
	idOrder int auto_increment primary key,
    idOrderClient int,
    OrdersStatus enum('Cancelled','Confirmed','Processing') default 'Processing',
    OrdersDescription varchar(55),
    Shipping float default 0,
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
		on update cascade
);
-- desc orders;

-- Tabela pagamento
CREATE table payments (
	idClient int,
    idPayment int,
    PaymentForms enum('Debit', 'Credit', 'PIX', 'Bank payment'),
    primary key (idClient, idPayment)
);

-- Tabela estoque
CREATE table productStorage (
	idProdStorage int auto_increment primary key,
    StorageLocation varchar(255),
    Quantity int default 0    
);

-- Tabela fornecedor
CREATE table supplier (
	idSupplier int auto_increment primary key,
    SupplierSocialName varchar(255) not null,
    SupplierCNPJ char(15) not null,
    SupplierContact char(11) not null,
    constraint unique_supplier unique (SupplierCNPJ)
);
-- desc supplier;

-- Tabela vendedor
CREATE table seller (
	idSeller int auto_increment primary key,
    SellerSocialName varchar(255) not null,
    SellerAbstractName varchar(255),
    SellerCNPJ char(15),
    SellerCPF char(9),
    SellerContact char(11) not null,
    SellerLocation varchar(255),
    constraint unique_cnpj_supplier unique (SellerCNPJ),
    constraint unique_cpf_supplier unique (SellerCPF)
);

-- Relação produto e vendedor
CREATE table productSeller (
	idPSeller int,
    idPProduct int,
    RelatedQuantity int default 1,
    primary key (idPSeller, idPProduct),
    constraint fk_product_seller foreign key (idPSeller) references seller(idSeller),
    constraint fk_product_product foreign key (idPProduct) references product(idProduct)
);
-- desc productSeller;

-- Relação produto e pedido
CREATE table productOrder (
	idPOProduct int,
    idPOOrder int,
    POQuantity int default 1,
    POStatus enum('Available','Not available') default 'Available',
    primary key (idPOProduct, idPOOrder),
    constraint fk_productorder_seller foreign key (idPOProduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOOrder) references orders(idOrder)
);

-- Relação estoque e produto
CREATE table storageLocation (
	idLProduct int,
    idLStorage int,
    Location varchar(255) not null,
    StorageStatus enum('Available', 'Not available') default 'Available',
    primary key (idLProduct, idLStorage),
    constraint fk_storage_location_seller foreign key (idLProduct) references product(idProduct),
    constraint fk_storage_location_storage foreign key (idLStorage) references productStorage(idProdStorage)
);

-- Relação produto e fornecedor
CREATE table productSupplier (
	idPsSupplier int,
    idPsProduct int,
    PsQuantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);

-- show tables;

show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'ecommerce';