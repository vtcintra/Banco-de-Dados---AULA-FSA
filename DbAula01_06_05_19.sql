create database  dbAula;
use dbAula;
create table tbAlunos(id int not null primary key, nome varchar(255));
create table tbDisciplinas(id int not null primary key, id_aluno int not null, disciplinas varchar(255));
alter table tbDisciplinas add constraint fkAlunosFSA foreing key(id_aluno) references tbAlunos(id);
insert into tbAlunos(nome) values(1,"Vitor");
insert into tbDisciplinas(id_aluno, disciplinas) values(1,1,"Historia");
select * from tbAlunos;
select * from tbDisciplinas;