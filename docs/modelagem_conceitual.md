# Modelagem Conceitual — Sistema Escolar

## 1. Introdução

Este documento apresenta a modelagem conceitual do sistema escolar desenvolvido para a Escola Futuro Brilhante.

A modelagem conceitual foi construída com base no levantamento de requisitos realizado junto ao cliente, permitindo representar visualmente as principais entidades, atributos e relacionamentos identificados durante a análise do sistema.

O objetivo desta etapa é organizar estruturalmente as informações do sistema antes da construção lógica e física do banco de dados.

---

## 2. Objetivo da Modelagem Conceitual

A modelagem conceitual tem como objetivo representar, de forma abstrata e organizada, os principais elementos do sistema escolar.

Nesta etapa foram identificadas:

* entidades do sistema;
* atributos das entidades;
* relacionamentos entre entidades;
* cardinalidades dos relacionamentos;
* regras de negócio relacionadas à estrutura do banco.

A modelagem conceitual permite compreender o funcionamento do sistema antes da implementação do banco de dados em SQL.

---

## 3. DER Conceitual

O Diagrama Entidade Relacionamento (DER) foi desenvolvido com base nas regras de negócio levantadas junto ao cliente.



---

## 4. Entidades Identificadas

Durante a modelagem conceitual foram identificadas as seguintes entidades principais:

### Aluno

Representa os estudantes cadastrados no sistema escolar.

Principais atributos:

* matrícula;
* nome completo;
* data de nascimento;
* idade;
* e-mail;
* telefone.

---

### Professor

Representa os professores responsáveis pelas disciplinas da escola.

Principais atributos:

* id_professor;
* nome completo;
* e-mail;
* telefone.

---

### Turma

Representa as turmas existentes na escola.

Principais atributos:

* id_turma;
* nome da turma;
* ano letivo;
* quantidade máxima de alunos.

---

### Disciplina

Representa as disciplinas ofertadas pela escola.

Principais atributos:

* id_disciplina;
* nome da disciplina.

---

### Turno

Representa os turnos acadêmicos da instituição.

Principais atributos:

* id_turno;
* nome do turno.

---

## 5. Relacionamentos e Cardinalidades

Os relacionamentos identificados durante a modelagem foram os seguintes:

### Turma → Aluno (1:N)

Uma turma pode possuir vários alunos, enquanto cada aluno pertence a apenas uma turma.

---

### Turno → Turma (1:N)

Um turno pode possuir várias turmas, enquanto cada turma pertence a apenas um turno.

---

### Professor → Disciplina (N:N)

Um professor pode ensinar várias disciplinas, enquanto uma disciplina pode ser ensinada por vários professores.

---

### Turma → Disciplina (N:N)

Uma turma pode possuir várias disciplinas, enquanto uma disciplina pode estar presente em várias turmas.

---

## 6. Considerações Finais

A modelagem conceitual permitiu estruturar visualmente os principais elementos do sistema escolar com base nos requisitos levantados junto ao cliente.

Esta etapa será utilizada como base para as próximas fases do projeto, incluindo:

* modelagem lógica;
* modelagem física;
* implementação do banco de dados em PostgreSQL.

A estrutura foi planejada de forma organizada e escalável, permitindo futuras expansões do sistema sem comprometer a organização inicial do banco de dados.
