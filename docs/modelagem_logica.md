# Modelagem Lógica — Sistema Escolar

## 1. Introdução

Este documento apresenta a modelagem lógica do Sistema Escolar, desenvolvida a partir do modelo conceitual elaborado na etapa anterior.

A modelagem lógica tem como objetivo transformar entidades, atributos e relacionamentos do modelo conceitual em estruturas relacionais que possam posteriormente ser implementadas em um Sistema Gerenciador de Banco de Dados (SGBD).

---

## 2. Objetivo da Modelagem Lógica

A modelagem lógica busca representar a estrutura relacional do banco de dados, definindo:

* tabelas;
* atributos;
* chaves primárias (PK);
* chaves estrangeiras (FK);
* relacionamentos entre tabelas;
* resolução de relacionamentos N:N através de tabelas associativas.

---


## 4. Tabelas do Sistema

### 4.1 Tabela TURNO

| Campo         | Tipo    |
| ------------- | ------- |
| id_turno (PK) | Inteiro |
| nome_turno    | Texto   |

Descrição:

Armazena os turnos disponíveis na escola (manhã, tarde e noite).

---

### 4.2 Tabela TURMA

| Campo            | Tipo    |
| ---------------- | ------- |
| id_turma (PK)    | Inteiro |
| ano_letivo       | Inteiro |
| quant_max_alunos | Inteiro |
| id_turno (FK)    | Inteiro |

Descrição:

Armazena as turmas cadastradas na instituição.

---

### 4.3 Tabela ALUNO

| Campo           | Tipo    |
| --------------- | ------- |
| matricula (PK)  | Inteiro |
| nome_completo   | Texto   |
| data_nascimento | Data    |
| idade           | Inteiro |
| email           | Texto   |
| telefone        | Texto   |
| id_turma (FK)   | Inteiro |

Descrição:

Armazena os dados dos alunos matriculados.

---

### 4.4 Tabela PROFESSOR

| Campo             | Tipo    |
| ----------------- | ------- |
| id_professor (PK) | Inteiro |
| nome_completo     | Texto   |
| email             | Texto   |
| telefone          | Texto   |

Descrição:

Armazena os dados dos professores.

---

### 4.5 Tabela DISCIPLINA

| Campo              | Tipo    |
| ------------------ | ------- |
| id_disciplina (PK) | Inteiro |
| nome_disciplina    | Texto   |

Descrição:

Armazena as disciplinas ofertadas pela escola.

---

### 4.6 Tabela PROFESSOR_DISCIPLINA

| Campo                 | Tipo    |
| --------------------- | ------- |
| id_professor (PK/FK)  | Inteiro |
| id_disciplina (PK/FK) | Inteiro |

Descrição:

Tabela associativa responsável por resolver o relacionamento N:N entre PROFESSOR e DISCIPLINA.

---

## 5. Relacionamentos e Cardinalidades

### TURNO → TURMA

Cardinalidade:

1:N

Descrição:

Um turno pode possuir várias turmas, enquanto cada turma pertence a apenas um turno.

---

### TURMA → ALUNO

Cardinalidade:

1:N

Descrição:

Uma turma pode possuir vários alunos, enquanto cada aluno pertence a apenas uma turma.

---

### PROFESSOR → DISCIPLINA

Cardinalidade no Modelo Conceitual:

N:N

Solução adotada na Modelagem Lógica:

Criação da tabela associativa PROFESSOR_DISCIPLINA.

Relacionamentos resultantes:

* PROFESSOR 1:N PROFESSOR_DISCIPLINA
* DISCIPLINA 1:N PROFESSOR_DISCIPLINA

---

## 6. Regras de Integridade

As seguintes regras foram aplicadas:

* Toda tabela possui uma chave primária (PK).
* As chaves estrangeiras garantem a integridade referencial.
* Relacionamentos N:N foram convertidos em tabelas associativas.
* Não é permitido cadastrar registros dependentes sem referência válida às tabelas relacionadas.

---

## 7. Considerações Finais

A modelagem lógica permitiu transformar o modelo conceitual em uma estrutura relacional preparada para implementação física no PostgreSQL.

O modelo obtido servirá como base para a próxima etapa do projeto, a modelagem física, onde serão definidos os tipos de dados, constraints e comandos SQL necessários para criação do banco de dados.
