create database consultas;

use consultas;

create table paciente(
	card_sus int primary key not null,
    nome_paciente varchar(55),
    idade int,
    sexo char(1),
    convenio varchar(30));
    
create table medico(
	crm int primary key not null,
    nome_medico varchar(55),
    especialidade varchar(40),
    card_sus int,
    foreign key (card_sus) references paciente (card_sus));
    
insert into paciente(card_sus, nome_paciente, idade, sexo, convenio)
	values
    (11111, "Thiago Trindade de Farias", 19, "m", "SulAmerica"),
    (22222, "Luis Carlos Batista Souza", 18, "m", "Bradesco"),
    (33333, "Manoele Veloso da Silva", 16, "f", "Santa Helena"),
    (44444, "Erudite da Trindade Farias", 52, "f", "Bradesco"),
    (55555, "Breno Farias de Sousa", 18, "m", "Amil");
    
insert into medico(crm, nome_medico, especialidade, card_sus)
	values
    (66666, "Richard Barbosa Pinheiro", "Fioterapeuta", 11111),
    (77777, "Tatiane Pereira Bonfim", "Cardiologia", 22222),
    (88888, "Vitor Rubin Passos", "Urologia", 55555),
    (99999, "Natalia Ferreira Sousa", "Neurocirurgiã", 33333);
    
select* from paciente;

select* from medico;

select* from paciente order by nome_paciente;

alter table paciente modify convenio varchar(40);

select paciente.nome_paciente , medico.especialidade
from paciente 
inner join medico  on paciente.card_sus = medico.card_sus; 