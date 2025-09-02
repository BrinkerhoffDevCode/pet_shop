CREATE DATABASE petshop;

USE petshop;

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(9) NOT NULL,
    email VARCHAR(255) NOT NULL 
);

CREATE TABLE IF NOT EXISTS animais (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    especie VARCHAR(255) NOT NULL,
    porte VARCHAR(6) NOT NULL,
    nascimento DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS servicos (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE,
    preco DECIMAL(10,2) NOT NULL,
    duracao_min TIME(10) NOT NULL,
);


CREATE TABLE IF NOT EXISTS agendamento (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    id_servico INT NOT NULL,
    id_animal INT NOT NULL,
    status VARCHAR(5) NOT NULL,
    observacoes VARCHAR(5) NOT NULL,
    FOREIGN KEY (id_servico) REFERENCES servicos(id_servico),
    FOREIGN KEY (id_animal) REFERENCES animais(id_animal)
);

//