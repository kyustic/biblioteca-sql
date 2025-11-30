USE biblioteca_db;

-- Categorias
INSERT INTO Categoria (Nome) VALUES
('Ficção'),
('Tecnologia'),
('Ciências'),
('História'),
('Literatura Brasileira');

-- Usuários
INSERT INTO Usuario (Nome, Email, Telefone, Tipo) VALUES
('João Silva', 'joao@gmail.com', '11999990000', 'Aluno'),
('Maria Oliveira', 'maria@gmail.com', NULL, 'Professor'),
('Carlos Souza', 'carlos@gmail.com', '11888880000', 'Aluno');

-- Livros
INSERT INTO Livro (Titulo, ISBN, Editora, Ano_Publicacao, Qtd_Exemplares, ID_Categoria) VALUES
('Introdução à Programação', '978857522', 'Novatec', 2020, 4, 2),
('Dom Casmurro', '978853330', 'Saraiva', 2008, 3, 5),
('História do Brasil', '978850001', 'Record', 2015, 2, 4);

-- Empréstimos
INSERT INTO Emprestimo (ID_Usuario, ID_Livro, Data_Emprestimo, Data_Devolucao)
VALUES
(1, 1, '2025-03-10', '2025-03-20'),
(2, 2, '2025-03-12', '2025-03-22'),
(3, 3, '2025-03-15', '2025-03-25');

-- Avaliações
INSERT INTO Avaliacao (ID_Usuario, ID_Livro, Nota, Comentario, Data_Avaliacao)
VALUES
(1, 1, 5, 'Excelente livro!', '2025-03-21'),
(2, 2, 4, 'Muito bom.', '2025-03-22'),
(3, 1, 3, 'Conteúdo razoável.', '2025-03-23');
