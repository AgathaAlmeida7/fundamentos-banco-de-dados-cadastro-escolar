# Levantamento de Requisitos — Sistema Escolar

## 1. Introdução

Este documento apresenta o levantamento de requisitos do sistema escolar desenvolvido para a Escola Futuro Brilhante.

O sistema será responsável por organizar informações acadêmicas relacionadas a alunos, professores, disciplinas, turmas e turnos escolares, permitindo melhor gerenciamento e consultas das informações da escola.

O levantamento foi realizado por meio de entrevistas e conversas com o cliente, buscando compreender as principais necessidades da instituição para a construção da primeira versão do sistema.

---

## 2. Objetivo do Sistema

O objetivo do sistema é centralizar e organizar o gerenciamento acadêmico da escola, permitindo o cadastro e a consulta de informações relacionadas aos alunos, professores, disciplinas, turmas e turnos.

O sistema visa substituir controles manuais realizados em papel e planilhas, proporcionando melhor organização das informações acadêmicas da instituição.

---

## 3. Escopo da Primeira Versão

A primeira versão do sistema contemplará:

* cadastro de alunos;
* cadastro de professores;
* cadastro de disciplinas;
* cadastro de turmas;
* cadastro de turnos;
* relacionamento entre professores e disciplinas;
* relacionamento entre turmas e disciplinas;
* relacionamento entre alunos e turmas;
* consultas acadêmicas básicas.

---

## 4. Entidades Identificadas

Durante o levantamento de requisitos, foram identificadas as seguintes entidades principais:

* Aluno
* Professor
* Turma
* Disciplina
* Turno

---

## 5. Informações Identificadas por Entidade

### 5.1 Aluno

O sistema deverá armazenar as seguintes informações dos alunos:

* matrícula;
* nome completo;
* data de nascimento;
* idade;
* e-mail;
* telefone;
* turma;
* turno.

Observações:

* cada aluno possuirá matrícula única;
* cada aluno pertencerá a apenas uma turma por vez.

---

### 5.2 Professor

O sistema deverá armazenar as seguintes informações dos professores:

* código do professor;
* nome completo;
* e-mail;
* telefone;
* disciplina(s) ministradas;
* turno de trabalho.

Observações:

* um professor poderá ensinar mais de uma disciplina;
* uma disciplina poderá possuir mais de um professor.

---

### 5.3 Turma

O sistema deverá armazenar as seguintes informações das turmas:

* nome da turma;
* ano letivo;
* turno;
* quantidade máxima de alunos.

Observações:

* uma turma poderá possuir vários alunos;
* uma turma poderá possuir várias disciplinas;
* cada turma pertencerá a apenas um turno.

---

### 5.4 Disciplina

O sistema deverá permitir o cadastro de disciplinas escolares.

Exemplos de disciplinas identificadas:

* Matemática;
* Português;
* História;
* Geografia;
* Ciências;
* Biologia;
* Física;
* Química;
* Educação Física;
* Inglês.

Observações:

* o sistema deverá permitir o cadastro de novas disciplinas futuramente;
* disciplinas não serão fixas no sistema.

---

### 5.5 Turno

Os turnos identificados no sistema foram:

* manhã;
* tarde;
* noite.

Observações:

* cada turma pertencerá a apenas um turno;
* diferentes turmas poderão existir em diferentes turnos.

---

## 6. Regras de Negócio

As seguintes regras de negócio foram identificadas durante o levantamento:

* um aluno pertence a apenas uma turma;
* uma turma pode possuir vários alunos;
* um professor pode ensinar várias disciplinas;
* uma disciplina pode ser ensinada por vários professores;
* uma turma pode possuir várias disciplinas;
* uma turma pertence a apenas um turno;
* cada turma possui quantidade máxima de alunos;
* o sistema deverá permitir consultas acadêmicas relacionadas às entidades cadastradas.

---

## 7. Relacionamentos Identificados

Os seguintes relacionamentos foram identificados:

* Turma → possui vários alunos;
* Professor → ensina várias disciplinas;
* Disciplina → pode ser ensinada por vários professores;
* Turma → possui várias disciplinas;
* Turno → organiza várias turmas.

---

## 8. Funcionalidades do Sistema

O sistema deverá permitir:

* cadastrar alunos;
* cadastrar professores;
* cadastrar disciplinas;
* cadastrar turmas;
* cadastrar turnos;
* consultar alunos por turma;
* consultar professores por disciplina;
* consultar disciplinas por turma;
* consultar turmas por turno.

---

## 9. Funcionalidades Futuras

As seguintes funcionalidades poderão ser implementadas futuramente:

* controle de notas;
* frequência escolar;
* boletins;
* cadastro de responsáveis;
* controle financeiro;
* gerenciamento de salas;
* gerenciamento de horários de aula;
* histórico escolar;
* calendário acadêmico.

---

## 10. Considerações Finais

O levantamento de requisitos realizado permitiu compreender as principais necessidades da Escola Futuro Brilhante para a primeira versão do sistema escolar.

As informações documentadas neste arquivo servirão como base para as próximas etapas do projeto, incluindo:

* modelagem conceitual;
* modelagem lógica;
* modelagem física;
* implementação do banco de dados.

O sistema foi planejado de forma organizada e escalável, permitindo futuras expansões sem comprometer a estrutura inicial do banco de dados.
