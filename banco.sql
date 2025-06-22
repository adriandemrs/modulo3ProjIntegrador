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
