create database dbAula2;
use database;
create table categorias (
id int not null AUTO_INCREMENT PRIMARY KEY,
NOME varchar(255) not null
) ENGINE = MYISAM;

create table produtos (
id int not null AUTO_INCREMENT PRIMARY KEY,
categoria_id int not null,
nome varchar(255) not null,
preco decimal(10,2) not null
) ENGINE = MYISAM;


alter table produtos add constraint fkidcategoria foreing key(categoria_id) references categorias(id); 

insert into categorias values(1,"Camisetas");
insert into categorias values(2,"Canecas");

insert into produtos values(1,1,"Camiseta Social", 15.00);
insert into produtos values(2,1,"Camiseta Regata", 11.99);
insert into produtos values(3,2,"Caneca Grande", 12.00);