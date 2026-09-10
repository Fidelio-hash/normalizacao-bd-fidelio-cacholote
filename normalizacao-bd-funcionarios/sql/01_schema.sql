-- =========================================================
-- NORMALIZAÇÃO DE BASE DE DADOS - SISTEMA DE GESTÃO DE FUNCIONÁRIOS
-- Universidade Licungo
-- Fidelio Ricardo Cacholote
-- =========================================================

CREATE DATABASE gestao_funcionarios
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE gestao_funcionarios;

-- 3FN/4FN: entidades de referência e localização
CREATE TABLE pais (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE provincia (
    id_provincia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_pais INT NOT NULL,
    CONSTRAINT uq_provincia_pais UNIQUE (nome, id_pais),
    CONSTRAINT fk_provincia_pais
        FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE cidade (
    id_cidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_provincia INT NOT NULL,
    CONSTRAINT uq_cidade_provincia UNIQUE (nome, id_provincia),
    CONSTRAINT fk_cidade_provincia
        FOREIGN KEY (id_provincia) REFERENCES provincia(id_provincia)
);

CREATE TABLE endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    tipo_via VARCHAR(20) NOT NULL,
    nome_via VARCHAR(120) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    id_cidade INT NOT NULL,
    CONSTRAINT fk_endereco_cidade
        FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade)
);

CREATE TABLE cargo (
    cod_cargo VARCHAR(10) PRIMARY KEY,
    designacao VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE funcao (
    cod_funcao VARCHAR(10) PRIMARY KEY,
    designacao VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE posto_trabalho (
    id_posto INT AUTO_INCREMENT PRIMARY KEY,
    nome_posto VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    nuit VARCHAR(20) NOT NULL UNIQUE,
    bi VARCHAR(30) NOT NULL UNIQUE,
    email VARCHAR(150) NOT NULL UNIQUE,
    data_admissao DATE NOT NULL,
    id_endereco INT NOT NULL,
    cod_cargo VARCHAR(10) NOT NULL,
    cod_funcao VARCHAR(10) NOT NULL,
    id_posto INT NOT NULL,
    CONSTRAINT fk_funcionario_endereco
        FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco),
    CONSTRAINT fk_funcionario_cargo
        FOREIGN KEY (cod_cargo) REFERENCES cargo(cod_cargo),
    CONSTRAINT fk_funcionario_funcao
        FOREIGN KEY (cod_funcao) REFERENCES funcao(cod_funcao),
    CONSTRAINT fk_funcionario_posto
        FOREIGN KEY (id_posto) REFERENCES posto_trabalho(id_posto)
);

-- 4FN: fatos multivalorados independentes
CREATE TABLE filho (
    id_filho INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    nome VARCHAR(150) NOT NULL,
    CONSTRAINT uq_filho_funcionario_nome UNIQUE (id_funcionario, nome),
    CONSTRAINT fk_filho_funcionario
        FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
        ON DELETE CASCADE
);

CREATE TABLE telefone (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    numero VARCHAR(30) NOT NULL,
    CONSTRAINT uq_telefone_funcionario_numero UNIQUE (id_funcionario, numero),
    CONSTRAINT fk_telefone_funcionario
        FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario)
        ON DELETE CASCADE
);

CREATE INDEX idx_funcionario_cargo ON funcionario(cod_cargo);
CREATE INDEX idx_funcionario_funcao ON funcionario(cod_funcao);
CREATE INDEX idx_funcionario_posto ON funcionario(id_posto);
CREATE INDEX idx_endereco_cidade ON endereco(id_cidade);
CREATE INDEX idx_filho_funcionario ON filho(id_funcionario);
CREATE INDEX idx_telefone_funcionario ON telefone(id_funcionario);
