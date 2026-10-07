# 📚 Banco de Dados — Biblioteca

Projeto de banco de dados desenvolvido em **MySQL** para gerenciamento de alunos, livros e empréstimos de uma biblioteca.

## 📝 Descrição

O banco de dados `biblioteca` foi criado para armazenar informações sobre:

- Alunos cadastrados
- Livros disponíveis
- Empréstimos realizados
- Datas de empréstimo e devolução

## 🗂️ Estrutura do Banco de Dados

O banco possui três tabelas principais:

### 👨‍🎓 Tabela `aluno`

| Campo | Tipo | Descrição |
|---|---|---|
| `id_aluno` | INT | Identificador único do aluno |
| `nome_aluno` | VARCHAR(100) | Nome do aluno |
| `email` | VARCHAR(100) | E-mail do aluno |
| `curso` | VARCHAR(100) | Curso do aluno |

### 📖 Tabela `livro`

| Campo | Tipo | Descrição |
|---|---|---|
| `id_livro` | INT | Identificador único do livro |
| `titulo` | VARCHAR(100) | Título do livro |
| `autor` | VARCHAR(100) | Autor do livro |
| `ano_publicacao` | INT | Ano de publicação |

### 🔄 Tabela `emprestimo`

| Campo | Tipo | Descrição |
|---|---|---|
| `id_emprestimo` | INT | Identificador do empréstimo |
| `id_aluno` | INT | Identificador do aluno |
| `id_livro` | INT | Identificador do livro |
| `data_emprestimo` | DATE | Data do empréstimo |
| `data_devolucao` | DATE | Data de devolução |

## 🔗 Relacionamentos

A tabela `emprestimo` possui duas chaves estrangeiras:

- `id_aluno` → `aluno(id_aluno)`
- `id_livro` → `livro(id_livro)`

<img width="738" height="462" alt="image" src="https://github.com/user-attachments/assets/c113d61f-4d12-46c8-876d-a4543a9a8251" />



## 🛠️ Tecnologias utilizadas

- MySQL
- SQL
- Banco de dados relacional

## 🚀 Criação do Banco

CREATE DATABASE biblioteca;

USE biblioteca;


## 📋 Criação das Tabelas

### Tabela `aluno`

CREATE TABLE aluno ( idaluno INT PRIMARY KEY AUTOINCREMENT, nome_aluno VARCHAR(100), email VARCHAR(100), curso VARCHAR(100) );


### Tabela `livro`

CREATE TABLE livro ( idlivro INT PRIMARY KEY AUTOINCREMENT, titulo VARCHAR(100), autor VARCHAR(100), ano_publicacao INT );


### Tabela `emprestimo`

CREATE TABLE emprestimo ( idemprestimo INT PRIMARY KEY AUTOINCREMENT, idaluno INT NOT NULL, idlivro INT NOT NULL, dataemprestimo DATE, datadevolucao DATE,

FOREIGN KEY (idaluno) REFERENCES aluno(idaluno), FOREIGN KEY (idlivro) REFERENCES livro(idlivro) );


## ➕ Dados cadastrados

### Alunos

- Peter Johnson — Administração
- Batman — Análise e Desenvolvimento de Sistemas
- Mongoloide — Engenharia

### Livros

- Dom Casmurro — Machado de Assis — 1899
- O Hobbit — J. R. R. Tolkien — 1937
- Harry Potter e a Pedra Filosofal — J. K. Rowling — 1997

### Empréstimos

Foram registrados três empréstimos relacionando os alunos aos livros cadastrados.

## 🔍 Consultas

SELECT * FROM aluno;

SELECT * FROM livro;

SELECT * FROM emprestimo;


## ✏️ UPDATE

O comando `UPDATE` é utilizado para alterar informações existentes.

UPDATE livro SET titulo = "O Hobbit - Edição Especial" WHERE id_livro = 2;


## 🔒 UNIQUE

A restrição `UNIQUE` impede valores duplicados.

### Título dos livros

ALTER TABLE livro ADD CONSTRAINT uktitulounico UNIQUE (titulo);


### E-mail dos alunos

ALTER TABLE aluno ADD CONSTRAINT ukemailunico UNIQUE (email);


##  DROP TABLE

O comando `DROP TABLE` exclui uma tabela e todos os seus dados.

DROP TABLE livro;


> ⚠️ A tabela `livro` possui uma chave estrangeira relacionada à tabela `emprestimo`. Por isso, o MySQL pode impedir a exclusão enquanto esse relacionamento existir.

## 📚 Comandos SQL utilizados

Comando	Função
CREATE DATABASE	Cria um banco de dados
USE	Seleciona um banco de dados
CREATE TABLE	Cria uma tabela
INSERT INTO	Insere dados
SELECT	Consulta dados
UPDATE	Atualiza dados
ALTER TABLE	Altera a estrutura da tabela
PRIMARY KEY	Define uma chave primária
FOREIGN KEY	Define uma chave estrangeira
UNIQUE	Impede valores duplicados
DROP TABLE	Exclui uma tabela

## Relacionamentos
<img width="976" height="339" alt="image" src="https://github.com/user-attachments/assets/4d44bb2b-98f6-4556-824d-d4a8b175c221" />
<img width="984" height="338" alt="image" src="https://github.com/user-attachments/assets/f17ac516-f331-4d22-821a-66c5e0e9537a" />
<img width="982" height="336" alt="image" src="https://github.com/user-attachments/assets/d05fe9b2-cb41-42b1-9750-38b4ebd62847" />



