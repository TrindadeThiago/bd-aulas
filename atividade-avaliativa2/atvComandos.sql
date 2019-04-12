create database dados_pessoais;

use dados_pessoais;

create table cliente(
	Cod_Cliente int primary key auto_increment,
    nome varchar(30),
    endereco varchar(60),
    numero int,
    bairro varchar(60),
    cidade varchar(50),
    estado varchar(25),
    sexo char(1),
    telefoneFixo char(12));
    
insert into cliente(nome, endereco, numero, bairro, cidade, estado, sexo, telefoneFixo)
	values
		("Alessandro Luiz Silva","Campannella", 80,"Itaquera","São Paulo","São Paulo","M","4676-3000"),
        ("Priscila Luiza Hoffeman","Luiz Ayres", 162,"Artur Alvim","São Paulo","São Paulo","F","6539-7566"),
        ("Paula Soarez","Chamocos", 66,"Vila Carmosina","São Paulo","São Paulo","F","5673-8099"),
        ("Carlos Artur Vicente","Guaru", 10,"Brasilandia","Sãi Paulo","São Paulo","M","6527-0371"),
        ("Bianca Hilda Nascimento","Rosa Teixeira", 21,"Vila Santo Antonio","Ferraz de Vasconcelos","São Paulo","F","5638-0899"),
        ("Alex Braz Cantao","Campos Salles", 1902,"Vila Ana Mara","Poa","São Paulo","M","6589-1290"),
        ("Luana Guimaraes","Flor de Liz", 5678,"Rocha Mendes","Itaqua","São Paulo","M","4673-4521");
        
select * from cliente;

describe cliente;

select * from cliente 
where endereco like 'F%'; 

select * from cliente
where bairro like 'A%';

select * from cliente
order by bairro;

select * from cliente
where numero between 21 and 160;

alter table cliente 
add telefoneCelular char(12)
after sexo;

select * from cliente; 

update cliente set telefoneCelular="96758-0001" where Cod_Cliente=1; 
update cliente set telefoneCelular="98743-0023" where Cod_Cliente=2;
update cliente set telefoneCelular="95678-2999" where Cod_Cliente=3;
update cliente set telefoneCelular="96734-3873" where Cod_Cliente=4;
update cliente set telefoneCelular="94675-8678" where Cod_Cliente=5;
update cliente set telefoneCelular="97463-3896" where Cod_Cliente=6;
update cliente set telefoneCelular="75643-8090" where Cod_Cliente=7;    

delete from cliente where Cod_Cliente=5;

select nome, cidade from cliente;