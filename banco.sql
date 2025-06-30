-- Modelo de banco de dados para uma livraria
-- Desenvolvido por Adrian Brazuna

-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

-- Inserção de produtos
INSERT INTO produtos (id, nome, autor, preco) VALUES
(1, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 39.90),
(2, 'As Crônicas de Nárnia: O Leão, a Feiticeira e o Guarda-Roupa', 'C.S. Lewis', 34.50),
(3, 'O Hobbit', 'J.R.R. Tolkien', 29.00);

-- Inserção de pedidos
INSERT INTO pedidos (id, id_produto, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-06-13'),
(2, 3, 1, '2025-06-12'),
(3, 2, 3, '2025-06-11');
<<<<<<< HEAD

-- Atualização do preço do primeiro produto
UPDATE produtos
SET preco = 42.00
WHERE id = 1;

-- Remoção do pedido com id 3
DELETE FROM pedidos
WHERE id = 3;

-- Seleção de todos os produtos
SELECT * FROM produtos;

-- Seleção de pedidos com quantidade maior ou igual a 2
SELECT * FROM pedidos
WHERE quantidade >= 2;

-- Seleção dos nomes dos produtos e suas quantidades nos pedidos, com JOIN
SELECT produtos.nome, pedidos.quantidade
FROM pedidos
JOIN produtos ON pedidos.id_produto = produtos.id;
=======
>>>>>>> b44bb6e27d1d0dac0772cf6762c7c79f73e19438
