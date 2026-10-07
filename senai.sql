CREATE DATABASE biblioteca;

USE biblioteca;


CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR(100),
    email VARCHAR(100),
    curso VARCHAR(100)
);


CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    ano_publicacao INT
);


CREATE TABLE emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE,
    data_devolucao DATE,

    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);


INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Peter Johnson", "PeterJonhson@gmail.com", "Administração");

INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Batman", "Batman@gmail.com", "Análise e Desenvolvimento de Sistemas");

INSERT INTO aluno (nome_aluno, email, curso)
VALUES ("Mongoloide", "Mongoloide@gmail.com", "Engenharia");

SELECT * FROM aluno;


INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Dom Casmurro", "Machado de Assis", 1899);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("O Hobbit", "J. R. R. Tolkien", 1937);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ("Harry Potter e a Pedra Filosofal", "J. K. Rowling", 1997);


SELECT * FROM livro;


INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (1, 1, "2026-09-25", "2026-10-02");

INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (3, 2, "2026-09-20", "2026-09-30");

INSERT INTO emprestimo (
    id_aluno,
    id_livro,
    data_emprestimo,
    data_devolucao
)
VALUES (2, 3, "2026-09-15", "2026-09-25");


SELECT * FROM emprestimo;


O comando UPDATE é utilizado para alterar informações existentes na tabela.

UPDATE livro
SET titulo = "O Hobbit - Edição Especial"
WHERE id_livro = 2;


SELECT * FROM livro;


A restrição UNIQUE impede que existam dois livros com o mesmo título.

ALTER TABLE livro
ADD CONSTRAINT uk_titulo_unico UNIQUE (titulo);


A restrição UNIQUE impede que dois alunos possuam o mesmo e-mail.

ALTER TABLE aluno
ADD CONSTRAINT uk_email_unico UNIQUE (email);


O comando DROP TABLE exclui completamente uma tabela e seus dados.

DROP TABLE livro;

