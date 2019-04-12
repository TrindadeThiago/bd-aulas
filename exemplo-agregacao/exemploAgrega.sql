create database exemploAgrega;

use exemploAgrega;

create table vendas (
	cod_venda int primary key auto_increment not null,
    valor decimal (10,3),
    cod_vendedor int);
    
insert into vendas(valor,cod_vendedor)
	values
		(2.000,1),
        (3.000,2),
        (7.000,1),
        (6.000,3),
        (2.000,5),
        (1.000,5);
        
select * from vendas;

	/* exibe a soma dos valores da tabela vendas */
    
select sum(valor) from vendas;

	/* exibe a soma dos valores do vendedor com codigo 1 da tabela vendas */
    
select sum(valor) from vendas
where cod_vendedor=1;

	/* conta os registros da tabela vendas */

select count(*) from vendas;

	/* conta os registros do vendedor com codigo 1 da tabela vendas */
    
select count(*) from vendas
where cod_vendedor=1;

	/* exibe o menor valor da tabela vendas */

select min(valor) from vendas;

	/* exibe o maior valor da tabela vendas */
    
select max(valor) from vendas;

	/* exibe a média dos valores da tabela vendas */
    
select avg(valor) from vendas;

	/* exibe os valores distintos da tabela vendas */

select distinct cod_vendedor from vendas;