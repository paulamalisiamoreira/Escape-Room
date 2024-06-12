SELECT PK_pessoa FROM pessoa WHERE idade_pessoa = 30;

SELECT PK_livro FROM livros WHERE nome_livro = "Fly";

SELECT PK_partida as "Número Partida", FK_genero as "Genero Partida"
from partida
inner join genero
on FK_genero = PK_genero
where PK_partida = 3;

SELECT nome_jogo FROM jogos_online Where PK_jogo_online = 2;

SELECT nome_filme, nome_genero, FK_genero
  from filme
inner join genero
on FK_genero = PK_genero
where nome_filme = "Bad Boys";
