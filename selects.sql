-- 1. Listar livros com suas categorias
SELECT L.ID_Livro, L.Titulo, C.Nome AS Categoria
FROM Livro L
JOIN Categoria C ON L.ID_Categoria = C.ID_Categoria;

-- 2. Mostrar empréstimos com nome do usuário e título do livro
SELECT E.ID_Emprestimo, U.Nome AS Usuario, L.Titulo AS Livro,
       E.Data_Emprestimo, E.Data_Devolucao
FROM Emprestimo E
JOIN Usuario U ON E.ID_Usuario = U.ID_Usuario
JOIN Livro L ON E.ID_Livro = L.ID_Livro
ORDER BY E.Data_Emprestimo;

-- 3. Avaliações com nota maior que 3
SELECT U.Nome AS Usuario, L.Titulo AS Livro, A.Nota, A.Comentario
FROM Avaliacao A
JOIN Usuario U ON A.ID_Usuario = U.ID_Usuario
JOIN Livro L ON A.ID_Livro = L.ID_Livro
WHERE A.Nota > 3;

-- 4. Livros ordenados do mais novo para o mais antigo
SELECT Titulo, Ano_Publicacao
FROM Livro
ORDER BY Ano_Publicacao DESC;

-- 5. Mostrar apenas 2 usuários
SELECT Nome
FROM Usuario
LIMIT 2;
