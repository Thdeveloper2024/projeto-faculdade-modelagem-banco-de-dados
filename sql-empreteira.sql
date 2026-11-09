
-- ============================================================
-- Sistema de Gestão de Obras — Empreiteira EJS
-- Versão baseada no Dicionário de Dados — Rev. 3.1
-- SGBD indicado no dicionário: MySQL 8.0+
-- ============================================================

CREATE DATABASE IF NOT EXISTS gestao_obras_ejs
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE gestao_obras_ejs;

-- ============================================================
-- OBRA
-- ============================================================
CREATE TABLE obra (
    id_obra           INT,
    nome_obra         VARCHAR(150),
    endereco_obra     VARCHAR(255),
    horario_entrada   TIME,
    horario_saida     TIME,
    limite_hora_extra TIME,
    tempo_inicio      DATETIME,
    tempo_fim         DATETIME,
    status            VARCHAR(30),
    descricao         TEXT,

    PRIMARY KEY (id_obra)
) ENGINE = InnoDB;

-- ============================================================
-- FUNCIONARIOS
-- ============================================================
CREATE TABLE funcionarios (
    cpf                      CHAR(11),
    id_funcionario           INT,
    nome_funcionario         VARCHAR(150),
    data_nascimento          DATE,
    ano_contratacao          YEAR,
    cargo                    VARCHAR(100),
    salario_definido         DECIMAL(10,2),
    data_recebimento_salario DATE,
    id_obra                  INT,
    beneficio_funcionario    TEXT,

    PRIMARY KEY (cpf),
    CONSTRAINT fk_funcionarios_obra
        FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
) ENGINE = InnoDB;

-- ============================================================
-- EXTRAS
-- ============================================================
CREATE TABLE extras (
    cpf                    CHAR(11),
    nome_funcionario       VARCHAR(150),
    horas_extras           DECIMAL(5,2),
    horas_funcionario_deve DECIMAL(5,2),
    valor_bruto            DECIMAL(10,2),
    valor_descontado       DECIMAL(10,2),
    valor_liquido          DECIMAL(10,2),

    PRIMARY KEY (cpf),
    CONSTRAINT fk_extras_funcionario
        FOREIGN KEY (cpf) REFERENCES funcionarios (cpf)
) ENGINE = InnoDB;

-- ============================================================
-- TERCEIRIZADAS
-- ============================================================
CREATE TABLE terceirizadas (
    id_terceirizada        INT,
    nome_terceirizada      VARCHAR(150),
    cnpj_terceirizada      CHAR(14),
    valor_servico_prestado DECIMAL(10,2),

    PRIMARY KEY (id_terceirizada),
    UNIQUE (cnpj_terceirizada)
) ENGINE = InnoDB;

-- ============================================================
-- GERENCIAMENTO
-- ============================================================
CREATE TABLE gerenciamento (
    id_obra          INT,
    nome_engenheiro  VARCHAR(150),
    nome_arquiteto   VARCHAR(150),
    nome_mestre_obra VARCHAR(150),

    PRIMARY KEY (id_obra),
    CONSTRAINT fk_gerenciamento_obra
        FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
) ENGINE = InnoDB;

-- ============================================================
-- TAREFA_OBRA
-- ============================================================
CREATE TABLE tarefa_obra (
    id_tarefa        INT,
    id_obra          INT,
    nome_tarefa      VARCHAR(150),
    descricao_tarefa TEXT,
    data_execucao    DATE,
    status_tarefa    VARCHAR(30),

    PRIMARY KEY (id_tarefa),
    CONSTRAINT fk_tarefa_obra_obra
        FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
) ENGINE = InnoDB;

-- ============================================================
-- REGISTRO_PONTO
-- ============================================================
CREATE TABLE registro_ponto (
    id_ponto           BIGINT,
    cpf_funcionario    CHAR(11),
    id_obra            INT,
    data_ponto         DATE,
    tipo_marcacao      VARCHAR(20),
    data_hora_marcacao DATETIME,
    origem_marcacao    VARCHAR(30),
    justificativa      TEXT,

    PRIMARY KEY (id_ponto),
    CONSTRAINT fk_registro_ponto_funcionario
        FOREIGN KEY (cpf_funcionario) REFERENCES funcionarios (cpf),
    CONSTRAINT fk_registro_ponto_obra
        FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
) ENGINE = InnoDB;

-- ============================================================
-- PAGAMENTOS
-- ============================================================
CREATE TABLE pagamentos (
    id_pagamento          INT AUTO_INCREMENT,
    cpf_funcionario       CHAR(11),
    id_terceirizada       INT,
    id_obra               INT,
    valor_pago            DECIMAL(10,2),
    data_pagamento        DATE,
    comprovante_pagamento VARCHAR(255),
    formato_pagamento     VARCHAR(50),
    status_pagamento      VARCHAR(30),

    PRIMARY KEY (id_pagamento),
    CONSTRAINT fk_pagamentos_funcionario
        FOREIGN KEY (cpf_funcionario) REFERENCES funcionarios (cpf),
    CONSTRAINT fk_pagamentos_terceirizada
        FOREIGN KEY (id_terceirizada) REFERENCES terceirizadas (id_terceirizada),
    CONSTRAINT fk_pagamentos_obra
        FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
) ENGINE = InnoDB;

-- ============================================================
-- LOG_ACESSO
-- ============================================================
CREATE TABLE log_acesso (
    id_log             BIGINT,
    id_usuario         VARCHAR(100),
    data_hora_evento   DATETIME,
    tipo_acao          VARCHAR(50),
    tabela_afetada     VARCHAR(100),
    registro_id        VARCHAR(100),
    detalhes_alteracao TEXT,

    PRIMARY KEY (id_log)
) ENGINE = InnoDB;

