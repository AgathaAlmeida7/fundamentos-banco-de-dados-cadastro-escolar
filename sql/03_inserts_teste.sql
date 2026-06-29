-- ==========================================================
-- INSERÇÃO DE DADOS DE TESTE
-- Projeto: Cadastro Escolar
-- Banco de Dados: PostgreSQL
-- ==========================================================

-- ----------------------------------------------------------
-- TABELA: turno
-- ----------------------------------------------------------

INSERT INTO turno (turno)
VALUES
    ('Manhã'),
    ('Tarde'),
    ('Noite');

-- ----------------------------------------------------------
-- TABELA: professor
-- ----------------------------------------------------------

INSERT INTO professor
(
    nome_completo,
    email,
    telefone
)
VALUES
(
    'Carlos Silva',
    'Carlos.silva@escola.com',
    '81999990001'
),
(
    'Fernanda Oliveira',
    'Fernanda.oliveira@escola.com',
    '81999990002'
),
(
    'Marco Santos',
    'marcos.santos@escola.com',
    '81999990003'
);

-- ----------------------------------------------------------
-- TABELA: disciplina
-- ----------------------------------------------------------

INSERT INTO disciplina
(
    nome_disciplina
)
VALUES
(
    'Matemática'
),
(
    'Português'
),
(
    'História'
),
(
    'Ciências'
);

-- ----------------------------------------------------------
-- TABELA: turma
-- ----------------------------------------------------------

INSERT INTO turma
(
    ano_letivo,
    quant_max_aluno,
    id_turno
)
VALUES
(
    2026,
    30,
    1
),
(
    2026,
    35,
    2
);

-- ----------------------------------------------------------
-- TABELA: aluno
-- ----------------------------------------------------------

INSERT INTO aluno
(
    matricula,
    nome_completo,
    data_nascimento,
    idade,
    email,
    telefone,
    id_turma
)
VALUES
(
    '2026001',
    'Maria Oliveira',
    '2010-03-15',
    16,
    'maria.oliveira@escola.com',
    '81999991001',
    1
),
(
    '2026002',
    'João Santos',
    '2010-07-20',
    16,
    'joao.santos@escola.com',
    '81999991002',
    1
),
(
    '2026003',
    'Pedro Lima',
    '2009-11-08',
    17,
    'pedro.lima@escola.com',
    '81999991003',
    1
),
(
    '2026004',
    'Ana Costa',
    '2010-01-25',
    16,
    'ana.costa@escola.com',
    '81999991004',
    2
),
(
    '2026005',
    'Lucas Ferreira',
    '2009-09-12',
    17,
    'lucas.ferreira@escola.com',
    '81999991005',
    2
);

-- ----------------------------------------------------------
-- TABELA: turma_professor
-- ----------------------------------------------------------

INSERT INTO turma_professor
(
    id_turma,
    id_professor
)
VALUES
(
    1,
    1
),
(
    1,
    2
),
(
    2,
    2
),
(
    2,
    3
);

-- ----------------------------------------------------------
-- TABELA: disciplina_professor
-- ----------------------------------------------------------

INSERT INTO disciplina_professor
(
    id_professor,
    id_disciplina
)
VALUES
(
    1,
    1
),
(
    1,
    4
),
(
    2,
    2
),
(
    3,
    3
);