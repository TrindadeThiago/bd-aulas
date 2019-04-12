create database concessionaria;

use concessionaria;

create table cadastroCarros (

	id_carro int primary key auto_increment not null,
    modelo_carro varchar(30),
    marca_carro varchar(20),
    ano_carro int,
    preco decimal(10,3));
    
insert into cadastroCarros(modelo_carro, marca_carro, ano_carro, preco)
values
	("Gol","Wolksvagem", 2010, 15.000),
    ("Palio","Fiat", 2012, 16.500),
    ("Fiesta","Ford", 2000, 9.000),
    ("Meriva","Chevrolet", 2013, 22.000),
    ("Corsa","Chevrolet", 2013, 16.000);
    
select modelo_carro
from cadastroCarros
where ano_carro=2013;

select modelo_carro, marca_carro from cadastroCarros;

select modelo_carro,(preco * 1.1)as preco from cadastroCarros;

select modelo_carro from cadastroCarros
where preco between 9.000 and 16.000;

select modelo_carro from cadastroCarros
where preco not between 9.000 and 16.000;

select * from cadastroCarros
where marca_carro like 'F%';

select * from cadastroCarros
where marca_carro like '%m';

select * from cadastroCarros
where marca_carro like '%r%';

select * from cadastroCarros
where marca_carro not like '%e%';

