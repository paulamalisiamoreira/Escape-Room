
INSERT INTO pessoa (nome_pessoa, idade_pessoa) VALUES ('Ana Silva', 25);
INSERT INTO pessoa (nome_pessoa, idade_pessoa) VALUES ('João Souza', 30);
INSERT INTO pessoa (nome_pessoa, idade_pessoa) VALUES ('Maria Oliveira', 22);


INSERT INTO genero (nome_genero, descricao_genero) VALUES ('Futebol Masculino', 'Esporte de equipe - masculino');
INSERT INTO genero (nome_genero, descricao_genero) VALUES ('Futebol Feminino', 'Esporte de equipe - feminino');
INSERT INTO genero (nome_genero, descricao_genero) VALUES ('Vôlei Masculino', 'Esporte de equipe - masculino');
INSERT INTO genero (nome_genero, descricao_genero) VALUES ('Vôlei Feminino', 'Esporte de equipe - feminino');
INSERT INTO genero (nome_genero, descricao_genero) VALUES ('Ação', 'Filmes com muita adrenalina');
INSERT INTO genero (nome_genero, descricao_genero) VALUES ('RPG', 'Jogos de interpretação de papéis');
INSERT INTO genero (nome_genero, descricao_genero) VALUES ('Fantasia', 'Livros com elementos mágicos');


INSERT INTO partida (time_visitante, time_mandante, FK_genero) VALUES ('Corinthians', 'Flamengo', 1); 
INSERT INTO partida (time_visitante, time_mandante, FK_genero) VALUES ('Fluminense', 'Vasco', 2); 
INSERT INTO partida (time_visitante, time_mandante, FK_genero) VALUES ('São Paulo', 'Grêmio', 3); 
INSERT INTO partida (time_visitante, time_mandante, FK_genero) VALUES ('Palmeiras', 'JEC', 4); 


INSERT INTO partida_assistida (FK_partida, FK_pessoa, hora_assistida) VALUES (1, 1, '2023-06-01 15:30:00'); 
INSERT INTO partida_assistida (FK_partida, FK_pessoa, hora_assistida) VALUES (2, 2, '2023-06-02 16:00:00'); 
INSERT INTO partida_assistida (FK_partida, FK_pessoa, hora_assistida) VALUES (3, 3, '2023-06-03 17:00:00'); 
INSERT INTO partida_assistida (FK_partida, FK_pessoa, hora_assistida) VALUES (4, 1, '2023-06-04 18:00:00'); 
INSERT INTO partida_assistida (FK_partida, FK_pessoa, hora_assistida) VALUES (1, 3, '2023-06-05 19:00:00'); 


INSERT INTO filme (nome_filme, FK_genero) VALUES ('Duro de Marae', 5);
INSERT INTO filme (nome_filme, FK_genero) VALUES ('Bad Boys', 5);


INSERT INTO filmes_assistidos (FK_pessoa, FK_filme, hora_assistida) VALUES (1, 1, '2023-06-03 20:00:00'); -- Ana  assistiu Filme de Ação
INSERT INTO filmes_assistidos (FK_pessoa, FK_filme, hora_assistida) VALUES (2, 2, '2023-06-04 21:00:00'); -- João  assistiu Outro Filme de Ação
INSERT INTO filmes_assistidos (FK_pessoa, FK_filme, hora_assistida) VALUES (3, 1, '2023-06-05 22:00:00'); -- Maria  assistiu Filme de Ação


INSERT INTO jogos_online (nome_jogo, FK_genero) VALUES ('Jogo de RPG', 6);
INSERT INTO jogos_online (nome_jogo, FK_genero) VALUES ('Outro Jogo de RPG', 6);


INSERT INTO jogos_online_jogados (FK_pessoa, FK_jogos, hora_assistida) VALUES (1, 1, '2023-06-05 22:00:00'); 
INSERT INTO jogos_online_jogados (FK_pessoa, FK_jogos, hora_assistida) VALUES (3, 2, '2023-06-06 23:00:00');
INSERT INTO jogos_online_jogados (FK_pessoa, FK_jogos, hora_assistida) VALUES (2, 1, '2023-06-07 20:00:00'); 


INSERT INTO livros (nome_livro, FK_genero) VALUES ('Livro de Fantasia', 7);
INSERT INTO livros (nome_livro, FK_genero) VALUES ('Outro Livro de Fantasia', 7);


INSERT INTO livros_lidos (FK_pessoa, FK_livro, hora_assistida) VALUES (2, 1, '2023-06-07 18:00:00'); 
INSERT INTO livros_lidos (FK_pessoa, FK_livro, hora_assistida) VALUES (3, 2, '2023-06-08 19:00:00');
INSERT INTO livros_lidos (FK_pessoa, FK_livro, hora_assistida) VALUES (1, 2, '2023-06-09 20:00:00');

