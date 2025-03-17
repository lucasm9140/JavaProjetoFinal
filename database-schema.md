
# Esquema do Banco de Dados: Sistema de Gerenciamento de Clientes e Produtos

## Índice

1. [Visão Geral](#visão-geral)
2. [Estrutura das Tabelas](#estrutura-das-tabelas)
   - [Tabela `Agendamentos`](#tabela-pessoa)
   - [Tabela `Clientes`](#tabela-clientes)
   - [Tabela `Funcionarios`](#tabela-funcionarios)
   - [Tabela `Produtos`](#tabela-produtos)
   - [Tabela `Servicos`](#tabela-areas)

3. [Inserções de Dados](#inserções-de-dados)
4. [Consultas Comuns](#consultas-comuns)
5. [Modelo Relacional](#modelo-relacional)

---

## Visão Geral

Este documento descreve o esquema do banco de dados utilizado no sistema de gerenciamento de clientes e produtos. O banco de dados é composto por seis tabelas principais: `Agendamentos`, `Clientes`, `Funcionarios`, `Produtos` e `Servico`, `Vendas`.

---

## Estrutura das Tabelas

### Tabela `Clientes`

Armazena informações dos agendamentos.

```sql
CREATE TABLE Clientes(
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);
```

- **cliente_id**: Chave primária, identificador único do cliente.
- **nome**: Nome do cliente.
- **email**: E-mail de contato do cliente.
- **telefone**: Telefone de contato.

---

### Tabela `Funcionarios`

Armazena informações dos Colaboradores. 

```sql
CREATE TABLE Funcionarios (
    colaborador_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    ocupacao VARCHAR(50)
);
```

- **Funcionario_id**: Chave primária, identificador único do funcionario.
- **nome**: Nome do funcionario
- **email**: E-mail de contato do cliente.
- **idPessoa**: Chave estrangeira referenciando a tabela `pessoa`.

---

### Tabela `Servicos`

Armazena as áreas de atuação dos funcionários.

```sql
CREATE TABLE Servicos (
    servico_id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL,
    preco DECIMAL(10, 2)
);
```

- **servico_id**: Chave primária, identificador único dos serviços.
- **descricao**:Descriçoa dos serviços  (ex: Lavagem americana).

---

### Tabela `Agendamentos`

Armazena informações dos Agendamentos, associando-os a um serviço e a um cliente de atuação.

```sql
CREATE TABLE Agendamentos (
    agendamento_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    funcionario_id INT,
    servico_id INT,
    data_hora DATETIME,
    CONSTRAINT FK_Cliente FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    CONSTRAINT FK_Colaboradores FOREIGN KEY (colaborador_id) REFERENCES Colaboradores(colaborador_id),
    CONSTRAINT FK_Servico FOREIGN KEY (servico_id) REFERENCES Servicos(servico_id)
);
```

- **agendamento_id**: Chave primária, identificador do agendamento.
- **cliente_id**: Chave estrangeira referenciando a tabela `Clientes`.
- **funcionario**: Chave estrangeira referenciando a tabela `Funcionarios`.
- **serco_id**: Chave estrangeira referenciando a tabela `Servicos`.
- **data_hora**: Horario do agendamento.

---

### Tabela `produtos`

Armazena informações dos produtos disponíveis no sistema.

```sql
CREATE TABLE Produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200),
    preco DECIMAL(10, 2),
    estoque INT
);
```

- **priduto_id**: Chave primária, identificador único do produto.
- **nome**: Nome do produto.
- **descricao**: Descrição detalhada do produto.
- **preco**: Preço do produto.
- **estoque**: Categoria do produto (ex: Eletrônicos, Móveis).

---

### Tabela `Vendas`

Tabela de associação entre clientes e produtos, permitindo identificar quais produtos foram adquiridos por quais clientes.

```sql
CREATE TABLE Vendas (
    venda_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    data_hora DATETIME NOT NULL,
    valor_total DECIMAL(10, 2),
    CONSTRAINT FK_Vendas_Cliente FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    CONSTRAINT FK_Vendas_Produto FOREIGN KEY (produto_id) REFERENCES Produtos(produto_id)
);
```

- **cliente_id**: Chave estrangeira referenciando a tabela `Clientes`.
- **produto_id**: Chave estrangeira referenciando a tabela `Produtos`.