create database livraria;
use livraria;
create table LIVROS(
	LIVRO     varchar(100),
	AUTOR    varchar(100),
	SEXO     char(1),
	PAGINAS INT(5),
	EDITORA VARCHAR(30),
	VALOR  FLOAT(10.2),
	UF CHAR(2),
	ANO int(4)
);
use livraria;
insert into livros ( livro, autor, sexo, paginas, editora, valor, uf, ano )
values( 'Cavaleiro Real'  ,    'Ana Claudia', 'F' ,  465, 'Atlas'     ,  49.90 ,'RJ', 2009 ),
          ( 'SQL Para leigos',   'João Nunes' ,  'M', 450 , 'Addison' , 98.00 ,  'SP', 2018 ),
          ( 'Receitas Caseiras', 'Celia Tavares', 'F',  210,  'Atlas'       , 45.00 ,  'RJ', 2008 ),
          ( 'Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta'        ,  78.99 , 'RJ', 2018 ),
          ( 'Habitos Saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.98 , 'RJ', 2019 ),
          ( 'A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60.00 , 'MG', 2016 ),
          ( 'Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100.00 , 'ES', 2011 ),
          ( 'Pra sempre amigas', 'Leda Silva'       , 'F', 510, 'Insignia', 78.98 , 'ES', 2011 ),
          ( 'Copas Inesquecíveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98 , 'RS', 2018 ),
          ( 'O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58 , 'SP', 2017 );

          /* seleção = where, projeção = select,  e  */
select livro, autor, sexo, paginas, editora, valor, uf, ano from livros;
/* É possível projetar as colunas fora da ordem da construção da tabela...   */
/* Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino */
select livro, uf from livros where sexo = 'm';
/* Trazer o nome do livro e o numero de paginas dos livros publicados por autores do sexo feminino */
select livro, paginas from livros where sexo = 'f';
/*Trazer os valores dos livros das editoras de São Paulo*/
select l.uf, l.livro, l.valor from livros l where l.uf = 'SP';
/* Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro */
select autor, sexo from livros where sexo = 'M' and (uf = 'SP' or uf = 'RJ');
show tables;
show databases;
use livraria;
/*drop table cliente;*/
show tables;
