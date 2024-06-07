CREATE DATABASE escape_room;
USE escape_room;

CREATE TABLE pessoa(
	PK_pessoa int primary key auto_increment not null,
    nome_pessoa varchar(100) not null,
    idade_pessoa int
    );
    
CREATE TABLE genero(
	PK_genero int primary key not null auto_increment,
    nome_genero varchar(25),
    descricao_genero varchar (1000)
	);

CREATE TABLE partida(
PK_partida int primary key not null auto_increment,
time_visitante varchar(50),
time_mandante varchar(50),
FK_genero int not null,
foreign key (FK_genero) references genero(PK_genero)
);

CREATE TABLE partida_assistida(
FK_partida int,
FK_pessoa int,
constraint FK_partida_assistida foreign key (FK_partida) references partida(PK_partida),
constraint FK_pessoa_partida_assistida foreign key (FK_pessoa) references pessoa(PK_pessoa),
constraint PK_partida_assistida primary key (FK_partida,FK_pessoa),
hora_assistida datetime
);

CREATE TABLE filme(
PK_filme int primary key not null auto_increment,
nome_filme varchar(100),
FK_genero int not null,
foreign key  (FK_genero) references genero(PK_genero)
);

CREATE TABLE filmes_assistidos(
FK_pessoa int,
FK_filme int,
constraint FK_pessoa_filme_assistido foreign key (FK_pessoa) references pessoa(PK_pessoa),
constraint FK_filme_assistido foreign key (FK_filme) references filme(PK_filme),
constraint PK_filme_assistido primary key (FK_pessoa, FK_filme),
hora_assistida datetime
);


CREATE TABLE jogos_online(
PK_jogo_online int primary key not null auto_increment,
nome_jogo varchar(100),
FK_genero int,
foreign key  (FK_genero) references genero(PK_genero)
);

CREATE TABLE jogos_online_jogados(
FK_pessoa int,
FK_jogos int,
constraint FK_pessoa_jogo_jogado foreign key (FK_pessoa) references pessoa(PK_pessoa),
constraint FK_jogos_jogados foreign key (FK_jogos) references jogos_online(PK_jogo_online),
constraint PK_jogos_jogados primary key (FK_pessoa, FK_jogos),
hora_assistida datetime
);


CREATE TABLE livros(
PK_livro int primary key not null auto_increment,
nome_livro varchar(100),
FK_genero int,
foreign key  (FK_genero) references genero(PK_genero)
);

CREATE TABLE livros_lidos(
FK_pessoa int,
FK_livro int,
constraint FK_pessoa_livro_lido foreign key (FK_pessoa) references pessoa(PK_pessoa),
constraint FK_livro_lido foreign key (FK_livro) references livros(PK_livro),
constraint PK_livros_lidos primary key (FK_pessoa, FK_livro),
hora_assistida datetime
);
















