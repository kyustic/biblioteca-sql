-- 1. Atualizar telefone do usuário João (ID = 1)
UPDATE Usuario
SET Telefone = '11911112222'
WHERE ID_Usuario = 1;

-- 2. Atualizar quantidade de exemplares de um livro
UPDATE Livro
SET Qtd_Exemplares = 5
WHERE ID_Livro = 1;

-- 3. Adicionar multa ao empréstimo
UPDATE Emprestimo
SET Multa = 10.50
WHERE ID_Emprestimo = 1;

