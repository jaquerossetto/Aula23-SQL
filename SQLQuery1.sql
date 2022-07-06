create database catalogo;

create table filme(
	id int primary key identity,
	nome varchar(100) not null,
	data_lancamento int not null,
	duracao int not null
);

create table ator(
	id int primary key identity,
	nome varchar(100) not null,
	sobrenome varchar(100) not null,
);

create table filme_ator(
	id int primary key identity,
	id_ator int,
	id_filme int

	constraint FK_filme_id foreign key (id_filme) references filme(id),
	constraint FK_ator_id foreign key (id_ator) references ator(id),	
);

insert into ator (nome, sobrenome) 
values  ('Stephen', 'Lang'),
		('Jane', 'Levy'),
		('Dylan', 'Minnette'),
		('Daniel', 'Zavatto'),
		('Natalie', 'Portman'),
		('Christian', 'Bale'),
		('Chris', 'Hemsworth'),
		('Matt', 'Damon'),
		('Russel', 'Crowe'),
		('Anya', 'Taylor-Joy'),
		('Alexander', 'Skarsgard'),
		('Willian', 'Defoe'),
		('Nicole', 'Kidman'),
		('Ethan', 'Hawke')
;

insert into filme (nome, data_lancamento, duracao)
values ('Thor: Amor e Trovão',2022,120),
		('O homem do norte', 2022,137),
		('O homem nas trevas',2016,88)
;

select * from filme order by nome asc;
select * from filme order by data_lancamento desc;
select * from ator order by nome asc;


