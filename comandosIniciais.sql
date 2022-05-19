--comandos curso SQL
select getdate()
select *from sys.tables

--criando banco 
create database Ecomerce
--mudando a base 
use	Ecomerce

--criando tabelas
create table Teste
(
	Descricao varchar(50) null,
	Complemento char(10) not null
)

--apagar tabela
drop table Teste


int --inteiros
bigint --cpf número por exemplo
varchar(4000) -- limite 4000
char -- diferença de varchar que armanzena dados de tamanho fixo
bit -- aceita apenas 0 e 1 

insert Teste values ('a', 'a')
select *from Teste