create database CacauShow;

use CacauShow;

create table produtos(
	id_produto int auto_increment primary key,
    nome_produto varchar(100),
    desc_produto varchar(255),
    preco decimal(10,2));
    
desc produtos;

insert into produtos(nome_produto, desc_produto, preco)
	values
		("Caixa Delícias do Coração", "Esse primeiro produto é uma caixinha com saboroso tablete que possuem a mensagem “Eu te Amo” e bombons artesanais da Cacau show Chocolates nos sabores: merengue de morango e trufa meio amarga", 35.90),
		("Caixa Brilho no Olhar", "A caixa Brilho no Olhar da Cacau Show Chocolates vem com bombons de coração de chocolate branco com recheio de trufa meio amarga e corações de chocolate ao leite com recheio de creme de cereja além de um anel regulável.", 39.90),
		("Trufas", "As trufas da Cacau Show são vendidas em diversos sabores", 1.50),
        ("Kit Capricho", "Caixa com 16 trufinhas de sabores morango e chocolate sendo 8 de cada. Ótima opção para presentear meninas! A caixa vem com grafismos da marca, e pode ser usada posteriormente como porta joias ou porta treco.", 29.90),
		("Bombom Romeu e Julieta", "Caixa contendo 9 bombons da Cacau Show Chocolates recheados de geleia de goiaba e cheesecake.", 14.90),
		("Cartão Corações", "Cartão acompanhado de bombons ao leite e brando em formato de coração. Ideal para presentear quem se ama.", 6.50),
        ("Preciosidades", "Caixa recheada com bombons de chocolate ao leite com opções de recheio de licor de cereja e pedaço de cereja e tradicional.", 39.90);

select * from produtos;

alter table produtos modify nome_produto varchar(90);

update produtos set preco=7.50 where id_produto=6; 

select * from produtos where nome_produto like 'C%';

select * from produtos where preco between 24 and 40;

select * from produtos where nome_produto="Preciosidades";

select avg(preco) from produtos;

select min(preco) from produtos;

select max(preco) from produtos;

select sum(preco) from produtos;

select count(*) from produtos;

select length("Trufas");

select lower(" Kit Capricho");

select upper(" Kit Capricho");

select * from produtos order by nome_produto desc;

select substring("Kit Capricho", 4, 6);

select left("Kit Capricho", 4);

select right("Kit Capricho", 8);