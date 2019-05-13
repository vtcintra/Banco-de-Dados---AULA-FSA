create database dbAula; 
use dbAula; 
create table tbAlunos(id int primary key auto_increment not null, nome varchar(255));
create table tbDisciplinas(id int primary key auto_increment not null, disciplina varchar(255));
alter table tbdisciplinas add column id_aluno int; 
alter table tbdisciplinas add constraint fkAlunos foreign key (id_aluno) references tbAlunos (id); 
insert into tbAlunos(nome) values("Vitor Thomas Cintra");  
select * from tbAlunos; 
insert into tbdisciplinas(disciplina, id_aluno) values("Matemática", 1); 
select * from tbdisciplinas;
insert into tbAlunos(nome) values("Danilo Bento");
insert into tbAlunos(nome) values("Yago Urias"); 
insert into tbdisciplinas(disciplina, id_aluno) values("Português", 2);
insert into tbdisciplinas(disciplina, id_aluno) values("História", 3);
select * from tbAlunos;
select * from tbdisciplinas;
select * from tbalunos as a join tbdisciplinas as d on a.id = d.id_aluno;
select a.nome, d.disciplina from tbalunos as a join tbdisciplinas as d on a.id = d.id_aluno;