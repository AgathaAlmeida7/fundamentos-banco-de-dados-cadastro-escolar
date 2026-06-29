# Modelagem Física

## Introdução

Este documento apresenta a modelagem física do Sistema Escolar.

A modelagem física tem como objetivo transformar a modelagem lógica em estruturas implementáveis no PostgreSQL, definindo tabelas, tipos de dados, chaves primárias, chaves estrangeiras e regras de integridade.

---

## Objetivo

Implementar o banco de dados do sistema escolar no PostgreSQL.

---

## SGBD Utilizado

PostgreSQL

---

## Tabelas Previstas

- aluno
- turma
- turno
- professor
- disciplina
- turma_professor
- disciplina_professor

--- 

## REGRAS FÍSICAS DAS TABELAS

### ALUNO

| Campo | Tipo | Restrições |
|---------|---------|---------|
| matricula | VARCHAR(20) | PK, NOT NULL |
| nome_completo | VARCHAR(150) | NOT NULL |
| data_nascimento | DATE | NOT NULL |
| idade | INTEGER | NOT NULL |
| email | VARCHAR(150) | NOT NULL, UNIQUE |
| telefone | VARCHAR(15) | NOT NULL |
| id_turma | INTEGER | FK, NOT NULL |

### TURMA

| Campo | Tipo | Restrições |
|---------|---------|---------|
| id_turma | INTEGER | PK, NOT NULL |
| ano_letivo | INTEGER | NOT NULL |
| quant_max_aluno | INTEGER | NOT NULL |
| id_turno | INTEGER | FK, NOT NULL |

### TURNO

| Campo | Tipo | Restrições |
|---------|---------|---------|
| id_turno | INTEGER | PK, NOT NULL |
| turno | VARCHAR(20) | NOT NULL, UNIQUE |

### PROFESSOR

| Campo | Tipo | Restrições |
|---------|---------|---------|
| id_professor | INTEGER | PK, NOT NULL |
| nome_completo | VARCHAR(150) | NOT NULL |
| email | VARCHAR(150) | NOT NULL, UNIQUE |
| telefone | VARCHAR(15) | NOT NULL |

### DISCIPLINA

| Campo | Tipo | Restrições |
|---------|---------|---------|
| id_disciplina | INTEGER | PK, NOT NULL |
| nome_disciplina | VARCHAR(100) | NOT NULL, UNIQUE |

### TURMA_PROFESSOR

| Campo | Tipo | Restrições |
|---------|---------|---------|
| id_turma | INTEGER | PK, FK, NOT NULL |
| id_professor | INTEGER | PK, FK, NOT NULL |

### DISCIPLINA_PROFESSOR

| Campo | Tipo | Restrições |
|---------|---------|---------|
| id_professor | INTEGER | PK, FK, NOT NULL |
| id_disciplina | INTEGER | PK, FK, NOT NULL |


## Banco de Dados

Nome do banco:

cadastro_escolar

SGBD:

PostgreSQL



turno-3
disciplina-4
professor-3
turma-2
aluno-5
turma_professor-4
disciplina_professor-4

#ordem profissional dos inserts

-turno
-professor
-disciplinaa
-turma
-aluno
-turma_professor
-disciplina_professor
