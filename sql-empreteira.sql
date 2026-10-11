
-- Sistema de gestão para empreiteira


CREATE DATABASE IF NOT EXISTS empreiteira
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE empreiteira;

-- Tabelas independentes


CREATE TABLE funcionarios (
  id_funcionario           INT AUTO_INCREMENT PRIMARY KEY,
  nome_funcionario         VARCHAR(100)  NOT NULL,
  cpf                      CHAR(11)      NOT NULL UNIQUE,
  cargo                    VARCHAR(60)   NOT NULL,
  salario_definido         DECIMAL(10,2) NOT NULL,
  data_recebimento_salario DATE,
  beneficio_funcionario    VARCHAR(100)
);

CREATE TABLE obra (
  id_obra         INT AUTO_INCREMENT PRIMARY KEY,
  nome_obra       VARCHAR(100) NOT NULL,
  endereco_obra   VARCHAR(200) NOT NULL,
  data_inicio     DATE,
  data_fim        DATE,
  status          VARCHAR(30),
  horario_entrada TIME,
  horario_saida   TIME
);

CREATE TABLE tercerizadas (
  cnpj_empresa CHAR(14)     PRIMARY KEY,
  nome_empresa VARCHAR(100) NOT NULL
);


-- Tabelas com relacionamento 1:N (FK na tabela do lado "1,1")


-- relacionamento "recebe": funcionario (0,n) -> extras (1,1)
CREATE TABLE extras (
  id_extra               INT AUTO_INCREMENT PRIMARY KEY,
  id_funcionario         INT           NOT NULL,
  horas_extras           DECIMAL(6,2)  DEFAULT 0,
  valor_bruto            DECIMAL(10,2),
  valor_descontado       DECIMAL(10,2),
  valor_liquido          DECIMAL(10,2),
  horas_funcionario_deve DECIMAL(6,2)  DEFAULT 0,
  CONSTRAINT fk_extras_funcionario
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario)
);

-- relacionamento "contém": obra (0,n) -> tarefa_obra (1,1)
CREATE TABLE tarefa_obra (
  id_tarefa        INT AUTO_INCREMENT PRIMARY KEY,
  id_obra          INT          NOT NULL,
  nome_tarefa      VARCHAR(100) NOT NULL,
  descricao_tarefa TEXT,
  data_execucao    DATE,
  status_tarefa    VARCHAR(30),
  CONSTRAINT fk_tarefa_obra
    FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
);

-- relacionamento "registra": obra (0,n) -> pagamentos (1,1)
CREATE TABLE pagamentos (
  id_pagamentos         INT AUTO_INCREMENT PRIMARY KEY,
  id_obra               INT           NOT NULL,
  valor_pago            DECIMAL(10,2) NOT NULL,
  data_pagamento        DATE          NOT NULL,
  comprovante_pagamento VARCHAR(255),
  formato_pagamento     VARCHAR(30),
  status_pagamento      VARCHAR(30),
  CONSTRAINT fk_pagamentos_obra
    FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
);


-- Tabelas associativas (relacionamentos N:N)


-- relacionamento "aloca": funcionarios (0,n) <-> obra (0,n)
CREATE TABLE aloca (
  id_funcionario INT NOT NULL,
  id_obra        INT NOT NULL,
  PRIMARY KEY (id_funcionario, id_obra),
  CONSTRAINT fk_aloca_funcionario
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario),
  CONSTRAINT fk_aloca_obra
    FOREIGN KEY (id_obra) REFERENCES obra (id_obra)
);

-- relacionamento "contrata": obra (0,n) <-> tercerizadas (0,n)
CREATE TABLE contrata (
  id_obra      INT      NOT NULL,
  cnpj_empresa CHAR(14) NOT NULL,
  PRIMARY KEY (id_obra, cnpj_empresa),
  CONSTRAINT fk_contrata_obra
    FOREIGN KEY (id_obra) REFERENCES obra (id_obra),
  CONSTRAINT fk_contrata_empresa
    FOREIGN KEY (cnpj_empresa) REFERENCES tercerizadas (cnpj_empresa)
);
