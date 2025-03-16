/***
CREATE DATABASE IF NOT EXISTS estetica_auto;
USE estetica_auto;

CREATE TABLE IF NOT EXISTS clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT NOT NULL,
    cliente_id INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE IF NOT EXISTS servicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS agendamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    servico_id INT NOT NULL,
    cliente_nome VARCHAR(100) NOT NULL,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (servico_id) REFERENCES servicos(id)
);

CREATE TABLE IF NOT EXISTS funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Inserir 20 clientes
INSERT INTO clientes (nome, telefone) VALUES ('João Silva', '11987654321');
INSERT INTO clientes (nome, telefone) VALUES ('Maria Oliveira', '11981234567');
INSERT INTO clientes (nome, telefone) VALUES ('Carlos Souza', '11982345678');
INSERT INTO clientes (nome, telefone) VALUES ('Ana Costa', '11983456789');
INSERT INTO clientes (nome, telefone) VALUES ('Pedro Lima', '11984567890');
INSERT INTO clientes (nome, telefone) VALUES ('Fernanda Rodrigues', '11985678901');
INSERT INTO clientes (nome, telefone) VALUES ('Roberto Gomes', '11986789012');
INSERT INTO clientes (nome, telefone) VALUES ('Juliana Almeida', '11987890123');
INSERT INTO clientes (nome, telefone) VALUES ('Marcos Ferreira', '11988901234');
INSERT INTO clientes (nome, telefone) VALUES ('Camila Pereira', '11989012345');
INSERT INTO clientes (nome, telefone) VALUES ('Ricardo Martins', '11990123456');
INSERT INTO clientes (nome, telefone) VALUES ('Beatriz Dias', '11991234567');
INSERT INTO clientes (nome, telefone) VALUES ('Gustavo Ramos', '11992345678');
INSERT INTO clientes (nome, telefone) VALUES ('Luana Ribeiro', '11993456789');
INSERT INTO clientes (nome, telefone) VALUES ('Eduardo Teixeira', '11994567890');
INSERT INTO clientes (nome, telefone) VALUES ('Sofia Cardoso', '11995678901');
INSERT INTO clientes (nome, telefone) VALUES ('Vinicius Barros', '11996789012');
INSERT INTO clientes (nome, telefone) VALUES ('Isabela Nunes', '11997890123');
INSERT INTO clientes (nome, telefone) VALUES ('André Fonseca', '11998901234');
INSERT INTO clientes (nome, telefone) VALUES ('Priscila Mota', '11999012345');

-- Inserir 20 produtos
INSERT INTO produtos (nome, preco) VALUES ('Shampoo Automotivo', 29.90);
INSERT INTO produtos (nome, preco) VALUES ('Cera de Polimento', 45.50);
INSERT INTO produtos (nome, preco) VALUES ('Limpador de Vidros', 19.90);
INSERT INTO produtos (nome, preco) VALUES ('Desengraxante', 35.00);
INSERT INTO produtos (nome, preco) VALUES ('Condicionador de Borracha', 25.00);
INSERT INTO produtos (nome, preco) VALUES ('Higienizador de Estofados', 39.90);
INSERT INTO produtos (nome, preco) VALUES ('Polidor de Faróis', 49.90);
INSERT INTO produtos (nome, preco) VALUES ('Aspirador Portátil', 150.00);
INSERT INTO produtos (nome, preco) VALUES ('Kit de Limpeza Interna', 85.00);
INSERT INTO produtos (nome, preco) VALUES ('Luva de Microfibra', 12.50);
INSERT INTO produtos (nome, preco) VALUES ('Cerâmica Protetora', 250.00);
INSERT INTO produtos (nome, preco) VALUES ('Selante de Pintura', 60.00);
INSERT INTO produtos (nome, preco) VALUES ('Produto Anti-risco', 55.00);
INSERT INTO produtos (nome, preco) VALUES ('Polidor de Plásticos', 40.00);
INSERT INTO produtos (nome, preco) VALUES ('Limpa Bancos', 30.00);
INSERT INTO produtos (nome, preco) VALUES ('Espuma de Lavagem', 22.00);
INSERT INTO produtos (nome, preco) VALUES ('Revestimento Hidrofóbico', 280.00);
INSERT INTO produtos (nome, preco) VALUES ('Detergente Neutro', 18.00);
INSERT INTO produtos (nome, preco) VALUES ('Limpador de Rodas', 33.00);
INSERT INTO produtos (nome, preco) VALUES ('Condicionador de Couro', 42.00);

-- Inserir 20 serviços
INSERT INTO servicos (nome, preco) VALUES ('Lavagem Completa', 75.00);
INSERT INTO servicos (nome, preco) VALUES ('Polimento Externo', 95.00);
INSERT INTO servicos (nome, preco) VALUES ('Higienização Interna', 85.00);
INSERT INTO servicos (nome, preco) VALUES ('Enceramento', 110.00);
INSERT INTO servicos (nome, preco) VALUES ('Limpeza de Rodas', 65.00);
INSERT INTO servicos (nome, preco) VALUES ('Restauração de Faróis', 120.00);
INSERT INTO servicos (nome, preco) VALUES ('Impermeabilização', 130.00);
INSERT INTO servicos (nome, preco) VALUES ('Descontaminação de Pintura', 140.00);
INSERT INTO servicos (nome, preco) VALUES ('Hidratação de Couro', 90.00);
INSERT INTO servicos (nome, preco) VALUES ('Aplicação de Selante', 100.00);
INSERT INTO servicos (nome, preco) VALUES ('Polimento Profissional', 150.00);
INSERT INTO servicos (nome, preco) VALUES ('Limpeza de Motor', 160.00);
INSERT INTO servicos (nome, preco) VALUES ('Higienização do Ar-Condicionado', 110.00);
INSERT INTO servicos (nome, preco) VALUES ('Cristalização de Vidros', 80.00);
INSERT INTO servicos (nome, preco) VALUES ('Limpeza de Estofados', 95.00);
INSERT INTO servicos (nome, preco) VALUES ('Tratamento Antiriscos', 105.00);
INSERT INTO servicos (nome, preco) VALUES ('Polimento de Plásticos', 85.00);
INSERT INTO servicos (nome, preco) VALUES ('Limpeza e Conservação', 70.00);
INSERT INTO servicos (nome, preco) VALUES ('Lavagem a Seco', 65.00);
INSERT INTO servicos (nome, preco) VALUES ('Recuperação de Pintura', 200.00);

-- Inserir 20 agendamentos
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (1, 'João Silva', '2025-06-01 09:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (2, 'Maria Oliveira', '2025-06-02 10:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (3, 'Carlos Souza', '2025-06-03 11:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (4, 'Ana Costa', '2025-06-04 12:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (5, 'Pedro Lima', '2025-06-05 13:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (6, 'Fernanda Rodrigues', '2025-06-06 14:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (7, 'Roberto Gomes', '2025-06-07 15:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (8, 'Juliana Almeida', '2025-06-08 16:00:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (9, 'Marcos Ferreira', '2025-06-09 09:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (10, 'Camila Pereira', '2025-06-10 10:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (11, 'Ricardo Martins', '2025-06-11 11:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (12, 'Beatriz Dias', '2025-06-12 12:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (13, 'Gustavo Ramos', '2025-06-13 13:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (14, 'Luana Ribeiro', '2025-06-14 14:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (15, 'Eduardo Teixeira', '2025-06-15 15:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (16, 'Sofia Cardoso', '2025-06-16 16:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (17, 'Vinicius Barros', '2025-06-17 17:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (18, 'Isabela Nunes', '2025-06-18 18:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (19, 'André Fonseca', '2025-06-19 19:30:00');
INSERT INTO agendamentos (servico_id, cliente_nome, data_hora) VALUES (20, 'Priscila Mota', '2025-06-20 20:30:00');

-- Inserir 20 funcionários
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Bruno Silva', 'Atendente', '11991234560');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Carla Mendes', 'Atendente', '11992345661');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Diego Santos', 'Supervisor', '11993456762');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Elisa Costa', 'Atendente', '11994567863');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Fábio Lima', 'Atendente', '11995678964');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Gabriela Rocha', 'Gerente', '11996789065');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Henrique Alves', 'Atendente', '11997890166');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Isabel Ferreira', 'Atendente', '11998901267');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('João Pereira', 'Supervisor', '11990012368');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Larissa Souza', 'Atendente', '11991123469');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Marcelo Castro', 'Atendente', '11992234570');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Natalia Rocha', 'Gerente', '11993345671');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Otávio Santos', 'Atendente', '11994456772');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Paula Almeida', 'Atendente', '11995567873');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Rafael Silva', 'Supervisor', '11996678974');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Sandra Costa', 'Atendente', '11997789075');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Tiago Lima', 'Atendente', '11998890176');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Ursula Mendes', 'Gerente', '11999901277');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Victor Ramos', 'Atendente', '11990012378');
INSERT INTO funcionarios (nome, cargo, telefone) VALUES ('Wesley Rocha', 'Atendente', '11991123479');

-- Inserir 20 vendas (produto_id e cliente_id variando de 1 a 20, quantidade aleatória entre 1 e 5)
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (1, 1, 2);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (2, 2, 1);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (3, 3, 3);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (4, 4, 2);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (5, 5, 1);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (6, 6, 2);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (7, 7, 3);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (8, 8, 1);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (9, 9, 4);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (10, 10, 2);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (11, 11, 1);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (12, 12, 3);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (13, 13, 2);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (14, 14, 4);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (15, 15, 1);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (16, 16, 2);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (17, 17, 3);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (18, 18, 1);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (19, 19, 4);
INSERT INTO vendas (produto_id, cliente_id, quantidade) VALUES (20, 20, 2);
******
use estetica_auto;

ALTER TABLE agendamentos ADD COLUMN funcionario_id INT;
ALTER TABLE agendamentos ADD FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id);
***/

use estetica_auto;

select * from clientes;