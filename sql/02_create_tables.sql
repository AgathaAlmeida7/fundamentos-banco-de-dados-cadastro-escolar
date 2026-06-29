-- script de criacao de tabelas



# sobre o id do turno ira ser gerado automaticamente pelo postgresql, utilizando a restricao identity

CREATE TABLE turno(
    id_turno INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    turno VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE professor(
    id_professor INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL
);
CREATE TABLE disciplina(
    id_disciplina INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE turma(
    id_turma INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ano_letivo INTEGER NOT NULL,
    quant_max_aluno INTEGER NOT NULL,
    id_turno INTEGER NOT NULL,
    CONSTRAINT fk_turma_turno 
        FOREIGN KEY(id_turno)
        REFERENCES turno(id_turno)
);

CREATE TABLE aluno(
    matricula VARCHAR(20) PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    data_nascimento DATE NOT NULL,
    idade INTEGER NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    id_turma INTEGER NOT NULL,
    CONSTRAINT fk_aluno_turma
        FOREIGN KEY (id_turma)
        REFERENCES turma(id_turma)
);
CREATE TABLE turma_professor(
    id_turma INTEGER NOT NULL,
    id_professor INTEGER NOT NULL,
    CONSTRAINT pk_turma_professor
        PRIMARY KEY (id_turma,id_professor),
    CONSTRAINT fk_turma_professor_turma
        FOREIGN KEY(id_turma)
        REFERENCES turma(id_turma),
    CONSTRAINT fk_turma_professor_professor
        FOREIGN KEY(id_professor)
        REFERENCES professor(id_professor)
);
CREATE TABLE disciplina_professor(
    id_professor INTEGER NOT NULL,
    id_disciplina INTEGER NOT NULL,
    CONSTRAINT pk_disciplina_professor
    PRIMARY KEY(id_professor,id_disciplina),
    CONSTRAINT fk_disciplina_professor_professor
    FOREIGN KEY(id_professor)
    REFERENCES professor(id_professor),
    CONSTRAINT fk_disciplina_professor_disciplina
    FOREIGN KEY(id_disciplina)
    REFERENCES disciplina(id_disciplina)
);