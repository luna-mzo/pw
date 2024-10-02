CREATE DATABASE floricultura;
USE floricultura;
 

CREATE TABLE Funcionario (
    id_Funcionario INT PRIMARY KEY,
    nm_funcionario VARCHAR(255),
    dt_nascimento DATE,
    cargo VARCHAR(255),
	email VARCHAR(255),
    senha TEXT
);
 

CREATE TABLE Cliente (
    id_Cliente INT PRIMARY KEY,
    nm_cliente VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);
 

CREATE TABLE Fornecedor (
    id_Fornecedor INT PRIMARY KEY,
    nm_fornecedor VARCHAR(255),
    contato VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);
 

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT
);
 

CREATE TABLE Lancamentos (
    id_lancamento INT PRIMARY KEY,
    descricao VARCHAR(255),
    valor DECIMAL(10, 2),
    tipo ENUM('despesa', 'receita'),
    data_lancamento DATE,
    id_categoria INT,
    id_funcionario INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_Funcionario)
);
 

CREATE TABLE Lancamento_Despesas (
    id_despesa INT PRIMARY KEY,
    descricao VARCHAR(255),
    valor DECIMAL(10, 2),
    data_lancamento DATE,
    id_categoria INT,
    id_funcionario INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_Funcionario)
);
 

CREATE TABLE Lancamento_Receitas (
    id_receita INT PRIMARY KEY,
    descricao VARCHAR(255),
    valor DECIMAL(10, 2),
    data_lancamento DATE,
    id_categoria INT,
    id_funcionario INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_Funcionario)
);


INSERT INTO cliente (id_cliente, nm_cliente, sobrenome, email, telefone, endereco)
VALUES
(1, 'ana', 'souza', 'ana.souza@email.com', '(11) 91234-5678', 'rua x, 101'),
(2, 'luan', 'pereira', 'luan.pereira@email.com', '(21) 93456-7890', 'rua y, 202'),
(3, 'carla', 'mendes', 'carla.mendes@email.com', '(31) 97654-3210', 'avenida z, 303');


INSERT INTO fornecedor (id_fornecedor, nm_fornecedor, contato, email, telefone, endereco)
VALUES
(1, 'fornecedor d', 'luiz fernando', 'contato@fornecedord.com', '(11) 95555-4444', 'rua g, 404'),
(2, 'fornecedor e', 'patricia dias', 'contato@fornecedore.com', '(21) 94444-3333', 'avenida h, 505'),
(3, 'fornecedor f', 'jorge almeida', 'contato@fornecedorf.com', '(31) 93333-2222', 'praça i, 606');
