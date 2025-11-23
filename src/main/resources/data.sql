-- ============================
-- COLABORADORES
-- ============================
INSERT INTO colaboradores (nome, setor, email, senha, perfil, nivel_verde, ecoins)
VALUES ('Admin Silva', 'TI', 'admin@empresa.com',
        '$2a$10$RHqXlt31BPEHRlsOAKzc4eNyqQc31BZC5YzPoJl3fUXCE17sm/InK',
        'ADMIN', 'MENTOR', 10000);

INSERT INTO colaboradores (nome, setor, email, senha, perfil, nivel_verde, ecoins)
VALUES ('Ana Souza', 'Financeiro', 'ana@empresa.com',
        '$2a$10$B3Fb/SoClN5PkDP9LQciquKFp/93bBPKtLMeUyw.47WFqe8vnS4jG',
        'USER', 'EXPLORADOR', 500);

INSERT INTO colaboradores (nome, setor, email, senha, perfil, nivel_verde, ecoins)
VALUES ('Carlos Lima', 'Operações', 'carlos@empresa.com',
        '$2a$10$pkgQnkNK/JbALXBn1p7QFu/23BgjK7wXr9z86pfr2N8pyHLwwWW.i',
        'USER', 'INICIANTE', 200);

-- ============================
-- CURSOS
-- ============================
INSERT INTO cursos (tema, nivel, link)
VALUES ('Eficiência Energética', 'INICIANTE', 'https://curso.com/energia');

INSERT INTO cursos (tema, nivel, link)
VALUES ('Sustentabilidade Corporativa', 'EXPLORADOR', 'https://curso.com/sustentabilidade');

INSERT INTO cursos (tema, nivel, link)
VALUES ('Automação Sustentável', 'GUARDIAO', 'https://curso.com/automacao');

-- ============================
-- TAREFAS
-- ============================
INSERT INTO tarefas (descricao, dificuldade, impacto_kwh, impacto_co2)
VALUES ('Trocar lâmpadas fluorescentes por LED', 'BAIXA', 10.0, 2.5);

INSERT INTO tarefas (descricao, dificuldade, impacto_kwh, impacto_co2)
VALUES ('Desligar ar-condicionado fora do horário comercial', 'MEDIA', 25.0, 8.0);

INSERT INTO tarefas (descricao, dificuldade, impacto_kwh, impacto_co2)
VALUES ('Configurar impressoras para modo repouso automático', 'BAIXA', 5.0, 1.2);

INSERT INTO tarefas (descricao, dificuldade, impacto_kwh, impacto_co2)
VALUES ('Auditar consumo de energia dos servidores', 'ALTA', 50.0, 15.0);

-- ============================
-- MISSOES
-- ============================
INSERT INTO missoes (descricao, meta, status)
VALUES ('Reduzir 5% do consumo do andar de TI', 5.0, 'PENDENTE');

INSERT INTO missoes (descricao, meta, status)
VALUES ('Trocar todas as lâmpadas do corredor principal', 20.0, 'EM_ANDAMENTO');

INSERT INTO missoes (descricao, meta, status)
VALUES ('Diminuir em 10% o consumo de energia do setor Financeiro', 10.0, 'CONCLUIDA');

-- ============================
-- EXECUCOES
-- ============================
INSERT INTO execucoes (data, resultado, colaborador_id, tarefa_id)
VALUES (CURRENT_TIMESTAMP, 'Tarefa concluída com sucesso', 2, 1);

INSERT INTO execucoes (data, resultado, colaborador_id, tarefa_id)
VALUES (CURRENT_TIMESTAMP, 'Economia registrada', 2, 2);

INSERT INTO execucoes (data, resultado, colaborador_id, tarefa_id)
VALUES (CURRENT_TIMESTAMP, 'Configuração aplicada', 3, 3);

INSERT INTO execucoes (data, resultado, colaborador_id, tarefa_id)
VALUES (CURRENT_TIMESTAMP, 'Auditoria realizada', 1, 4);