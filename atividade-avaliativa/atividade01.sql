create database professor;

use professor;

drop table cadastro_professor;
create table cadastro_professor (
	id_professor int primary key auto_increment not null,
    nome_professor varchar(50),
    disciplina varchar(50),
    dia varchar(15),
    numero_aulas decimal(10,2));
    
insert into cadastro_professor(nome_professor, disciplina, dia, numero_aulas)
	values
    ("Marco Sales", "Desenvolvimento de sistemas", "Segunda-feira", 5),
    ("Renata", "Inglês Técnico", "Terça-feira", 2.5),
    ("Antônio", "Internet e Protocolos", "Terça-feira", 2.5),
    ("Marco Sales", "Programação WEB II", "Quarta-feira", 5),
    ("Andrew Ribeiro", "Programação de Aplicativos Mobile", "Quinta-feira", 5),
    ("Carlos Carvalho", "Banco de Dados II", "Sexta-feira", 2.5),
    ("Thiago Melo", "Pré Trabalho de Conclusão de Curso", "Sexta-feira", 2.5);
    
select * from cadastro_professor;

desc cadastro_professor;

alter table cadastro_professor modify numero_aulas decimal(10,1);

select * from cadastro_professor order by nome_professor;

select * from cadastro_professor order by disciplina desc;

select count(*) from cadastro_professor;

select sum(numero_aulas) from cadastro_professor;

select avg(numero_aulas) from cadastro_professor;

select max(numero_aulas) from cadastro_professor;

select min(numero_aulas) from cadastro_professor;

select distinct nome_professor from cadastro_professor;

select nome_professor, disciplina from cadastro_professor;