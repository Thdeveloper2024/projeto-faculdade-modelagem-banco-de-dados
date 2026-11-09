# Dicionário de Dados — Sistema de Gestão de Obras

## 1. Visão Geral

O sistema tem como objetivo organizar e gerenciar informações relacionadas aos pagamentos, funcionários, horas extras e horas devidas, empresas terceirizadas, obras, gerenciamento das obras, tarefas, registros de acesso e controle de ponto dos funcionários.

O modelo de dados apresenta as seguintes entidades:

1. **PAGAMENTOS**
2. **FUNCIONARIOS**
3. **EXTRAS**
4. **TERCEIRIZADAS**
5. **OBRA**
6. **GERENCIAMENTO**
7. **TAREFA_OBRA**
8. **LOG_ACESSO**
9. **REGISTRO_PONTO**

As entidades se relacionam conforme os processos operacionais do sistema. FUNCIONARIOS se relaciona com OBRA, pois os funcionários são alocados para trabalhar nas obras; com EXTRAS, que registra as horas extras e as horas devidas; com LOG_ACESSO, que armazena o histórico de acessos ao sistema; com REGISTRO_PONTO, que registra os horários de trabalho; e com PAGAMENTOS, que registra os pagamentos destinados aos funcionários.

PAGAMENTOS também se relaciona com TERCEIRIZADAS, registrando os valores pagos pelos serviços prestados, e com OBRA, para controlar as movimentações financeiras e os recebimentos de clientes relacionados às obras.

A entidade OBRA se relaciona com TERCEIRIZADAS, contratadas para executar serviços; com GERENCIAMENTO, que registra os responsáveis pela administração; e com TAREFA_OBRA, que contém as atividades necessárias para a conclusão de cada obra.

## 2. Entidades e Atributos

### 2.1 PAGAMENTOS

A entidade PAGAMENTOS registra as movimentações financeiras relacionadas aos funcionários, às empresas terceirizadas e às obras.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| id_pagamento | Identificador único do pagamento. | INT, chave primária | Deve ser único e obrigatório. |
| valor_pago | Valor da movimentação financeira. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |
| data_pagamento | Data em que a movimentação foi realizada. | DATE | Deve representar uma data válida. |
| comprovante_pagamento | Referência ou caminho do comprovante. | VARCHAR(255) | Pode ser preenchido quando houver comprovante. |
| formato_pagamento | Formato utilizado para realizar a movimentação. | VARCHAR(50) | Deve utilizar valores padronizados pelo sistema. |
| status_pagamento | Situação atual da movimentação. | VARCHAR(30) | Deve utilizar status padronizados. |

**Chave primária:** `id_pagamento`.

**Relacionamentos:** PAGAMENTOS se relaciona com FUNCIONARIOS, TERCEIRIZADAS e OBRA, registrando as movimentações financeiras associadas a essas entidades.

### 2.2 FUNCIONARIOS

A entidade FUNCIONARIOS armazena os dados dos profissionais que trabalham nas obras.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| id_funcionario | Identificador interno do funcionário. | INT | Pode ser utilizado como identificador auxiliar. |
| nome_funcionario | Nome completo do funcionário. | VARCHAR(150) | Deve ser informado. |
| cpf | CPF do funcionário. | CHAR(11), chave primária | Deve ser único e obrigatório. |
| cargo | Cargo ou função exercida. | VARCHAR(100) | Deve representar a função do funcionário. |
| salario_definido | Salário definido para o funcionário. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |
| data_recebimento_salario | Data prevista ou registrada para recebimento do salário. | DATE | Deve representar uma data válida. |
| beneficio_funcionario | Benefícios associados ao funcionário. | TEXT | Pode ser preenchido quando houver benefícios. |

**Chave primária:** `cpf`.

**Relacionamentos:** FUNCIONARIOS se relaciona com OBRA, EXTRAS, PAGAMENTOS, LOG_ACESSO e REGISTRO_PONTO, permitindo acompanhar a alocação nas obras, as horas extras e devidas, os pagamentos, o histórico de acessos e os registros da jornada de trabalho.

### 2.3 EXTRAS

A entidade EXTRAS armazena informações sobre as horas extras, os valores adicionais e as horas devidas pelos funcionários.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| cpf | CPF do funcionário ao qual o registro pertence. | CHAR(11), chave primária e estrangeira | Deve corresponder a um funcionário existente. |
| nome_funcionario | Nome do funcionário. | VARCHAR(150) | Deve corresponder ao funcionário relacionado. |
| horas_extras | Quantidade de horas extras registradas. | DECIMAL(5,2) | Não pode ser negativa. |
| valor_bruto | Valor bruto calculado para o registro. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |
| valor_descontado | Valor descontado. | DECIMAL(10,2) | Não pode ser negativo. |
| valor_liquido | Valor líquido resultante. | DECIMAL(10,2) | Deve ser consistente com os valores bruto e descontado. |
| horas_funcionario_deve | Quantidade de horas devidas pelo funcionário. | DECIMAL(5,2) | Não pode ser negativa. |

**Chave primária:** `cpf`.

**Chave estrangeira:** `cpf` referencia FUNCIONARIOS, caso essa relação esteja definida como chave estrangeira no banco de dados.

**Relacionamento:** EXTRAS se relaciona com FUNCIONARIOS, pois os registros de horas extras e horas devidas pertencem aos funcionários.

**Observação de modelagem:** como o CPF é a chave primária em FUNCIONARIOS e EXTRAS, o modelo atual permite apenas um registro de EXTRAS por funcionário. Portanto, esse relacionamento é tratado como 1:1. Para manter um histórico de vários registros por funcionário, será necessário criar um identificador próprio, como `id_extra`.

### 2.4 TERCEIRIZADAS

A entidade TERCEIRIZADAS armazena os dados das empresas terceirizadas que prestam serviços para as obras.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| id_empresa | Identificador interno da empresa terceirizada. | INT | Pode ser utilizado como identificador auxiliar. |
| nome_empresa | Nome da empresa terceirizada. | VARCHAR(150) | Deve ser informado. |
| cnpj_empresa | CNPJ da empresa terceirizada. | CHAR(14), chave primária | Deve ser único e obrigatório. |
| valor_servico_prestado | Valor do serviço prestado pela terceirizada. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |

**Chave primária:** `cnpj_empresa`.

**Relacionamentos:** TERCEIRIZADAS se relaciona com OBRA, pois as empresas terceirizadas são contratadas para executar serviços nas obras. Também se relaciona com PAGAMENTOS, que registra os valores pagos pelos serviços prestados.

### 2.5 OBRA

A entidade OBRA armazena as principais informações relacionadas às obras cadastradas no sistema.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| id_obra | Identificador interno da obra. | INT | Pode ser utilizado como identificador auxiliar. |
| nome_obra | Nome da obra. | VARCHAR(150), chave primária | Deve identificar uma única obra. |
| endereco_obra | Endereço onde a obra está localizada. | VARCHAR(255) | Deve representar a localização da obra. |
| tempo_inicio | Data ou horário de início da obra. | DATETIME | Deve representar o início previsto ou realizado. |
| tempo_fim | Data ou horário de término da obra. | DATETIME | Não deve ser anterior ao início. |
| status | Situação atual da obra. | VARCHAR(30) | Deve utilizar valores padronizados. |
| descricao | Descrição geral da obra. | TEXT | Deve apresentar informações relevantes. |
| horario_entrada | Horário de entrada previsto ou definido para a obra. | TIME | Deve representar um horário válido. |
| horario_saida | Horário de saída previsto ou definido para a obra. | TIME | Deve representar um horário válido. |

**Chave primária:** `nome_obra`.

**Relacionamentos:** OBRA se relaciona com FUNCIONARIOS, TERCEIRIZADAS, PAGAMENTOS, GERENCIAMENTO e TAREFA_OBRA, permitindo organizar os profissionais alocados, os serviços terceirizados, as movimentações financeiras, os responsáveis pelo gerenciamento e as tarefas necessárias para a conclusão da obra.

### 2.6 GERENCIAMENTO

A entidade GERENCIAMENTO armazena as informações dos profissionais responsáveis pelo gerenciamento de uma obra.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| nome_engenheiro | Nome do engenheiro responsável pela obra. | VARCHAR(150) | Pode ser informado quando houver engenheiro responsável. |
| nome_arquiteto | Nome do arquiteto responsável pela obra. | VARCHAR(150) | Pode ser informado quando houver arquiteto responsável. |
| nome_mestre_obra | Nome do mestre de obra responsável. | VARCHAR(150) | Pode ser informado quando houver mestre de obra responsável. |

**Chave primária:** não foi definida no diagrama atual.

**Relacionamento:** GERENCIAMENTO depende de OBRA, pois os responsáveis registrados estão associados ao gerenciamento de uma obra específica. No modelo atual, o relacionamento é tratado como 1:1 entre OBRA e GERENCIAMENTO.

### 2.7 TAREFA_OBRA

A entidade TAREFA_OBRA armazena as tarefas e atividades necessárias para a execução das obras.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| id_tarefa | Identificador único da tarefa. | INT, chave primária | Deve ser único e obrigatório. |
| nome_tarefa | Nome da tarefa. | VARCHAR(150) | Deve permitir identificar a atividade. |
| descricao_tarefa | Descrição da tarefa a ser realizada. | TEXT | Deve detalhar a atividade quando necessário. |
| data_execucao | Data prevista ou registrada para execução. | DATE | Deve representar uma data válida. |
| status_tarefa | Situação atual da tarefa. | VARCHAR(30) | Deve utilizar valores padronizados. |

**Chave primária:** `id_tarefa`.

**Relacionamento:** TAREFA_OBRA se relaciona com OBRA, pois cada obra possui uma ou mais tarefas necessárias para sua conclusão.

### 2.8 LOG_ACESSO

A entidade LOG_ACESSO armazena os registros de acesso dos usuários ao sistema, permitindo acompanhar atividades de autenticação e contribuir para a segurança e a auditoria da aplicação.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| id_log | Identificador único do registro de acesso. | INT, chave primária | Deve ser único e obrigatório. |
| cpf | CPF do funcionário ou usuário relacionado ao acesso. | CHAR(11), chave estrangeira, se aplicável | Deve corresponder a um usuário cadastrado, quando o acesso estiver vinculado a um funcionário. |
| data_hora_acesso | Data e horário em que o acesso ocorreu. | DATETIME | Deve registrar a data e a hora do evento. |
| tipo_acesso | Tipo de evento registrado, como login ou logout. | VARCHAR(50) | Deve utilizar categorias padronizadas pelo sistema. |
| status_acesso | Resultado da tentativa de acesso. | VARCHAR(30) | Deve indicar se o acesso foi autorizado ou negado. |
| endereco_ip | Endereço IP de origem do acesso. | VARCHAR(45) | Deve armazenar um endereço IPv4 ou IPv6 válido, quando disponível. |

**Chave primária:** `id_log`.

**Relacionamento:** LOG_ACESSO pode se relacionar com FUNCIONARIOS por meio do atributo `cpf`, caso os usuários do sistema sejam funcionários cadastrados. Um funcionário pode possuir vários registros de acesso.

**Regra de negócio:** os registros devem permitir consultar o histórico de acessos para fins de auditoria e segurança. Senhas e outros dados sigilosos de autenticação não devem ser armazenados diretamente nos logs.

### 2.9 REGISTRO_PONTO

A entidade REGISTRO_PONTO armazena os registros da jornada de trabalho dos funcionários, permitindo acompanhar os horários de entrada, saída e intervalos.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| id_registro_ponto | Identificador único do registro de ponto. | INT, chave primária | Deve ser único e obrigatório. |
| cpf | CPF do funcionário que realizou o registro. | CHAR(11), chave estrangeira | Deve corresponder a um funcionário cadastrado. |
| data_ponto | Data em que o ponto foi registrado. | DATE | Deve representar uma data válida. |
| horario_entrada | Horário de entrada do funcionário. | TIME | Deve representar um horário válido. |
| horario_saida_intervalo | Horário de saída para intervalo. | TIME | Pode ser preenchido quando houver intervalo registrado. |
| horario_retorno_intervalo | Horário de retorno do intervalo. | TIME | Pode ser preenchido quando houver intervalo registrado. |
| horario_saida | Horário de saída do funcionário. | TIME | Pode ser preenchido após o encerramento da jornada. |
| horas_trabalhadas | Total de horas trabalhadas no período. | DECIMAL(5,2) | Deve ser calculado ou validado conforme os horários registrados. |
| observacao | Observações sobre o registro de ponto. | TEXT | Pode ser preenchido para justificar ajustes ou ocorrências. |

**Chave primária:** `id_registro_ponto`.

**Chave estrangeira:** `cpf` referencia FUNCIONARIOS.

**Relacionamento:** REGISTRO_PONTO se relaciona com FUNCIONARIOS. Um funcionário pode possuir vários registros de ponto, normalmente correspondentes aos diferentes dias de trabalho.

**Regra de negócio:** os registros devem permitir acompanhar a jornada dos funcionários e apoiar a apuração das horas trabalhadas. As horas extras podem ser analisadas em conjunto com EXTRAS, respeitando as regras de cálculo e validação adotadas pelo sistema.

## 3. Resumo dos Relacionamentos

| Entidades | Relacionamento | Descrição |
|---|---|---|
| FUNCIONARIOS — OBRA | Alocação de funcionários | Funcionários são alocados para trabalhar nas obras. |
| FUNCIONARIOS — EXTRAS | Registro de horas | EXTRAS registra as horas extras, os valores e as horas devidas dos funcionários. |
| FUNCIONARIOS — PAGAMENTOS | Pagamento de funcionários | Registra os pagamentos destinados aos funcionários. |
| FUNCIONARIOS — LOG_ACESSO | Histórico de acesso | Permite associar registros de acesso aos funcionários cadastrados. |
| FUNCIONARIOS — REGISTRO_PONTO | Registro de jornada | Permite registrar os horários de trabalho de cada funcionário. |
| TERCEIRIZADAS — OBRA | Prestação de serviços | Empresas terceirizadas são contratadas para executar serviços nas obras. |
| TERCEIRIZADAS — PAGAMENTOS | Pagamento de serviços | Registra os pagamentos pelos serviços prestados pelas terceirizadas. |
| OBRA — PAGAMENTOS | Movimentações financeiras da obra | Registra movimentações financeiras e recebimentos de clientes relacionados às obras. |
| OBRA — GERENCIAMENTO | Gerenciamento da obra | Registra os profissionais responsáveis pelo gerenciamento. |
| OBRA — TAREFA_OBRA | Execução de tarefas | Cada obra possui uma ou mais tarefas necessárias para sua conclusão. |

## 4. Considerações Finais

O dicionário contempla nove entidades destinadas ao gerenciamento de obras, funcionários, empresas terceirizadas, movimentações financeiras, tarefas, gerenciamento, registros de acesso e controle de ponto.

Os tipos de dados, as chaves primárias, as chaves estrangeiras e as cardinalidades devem ser conferidos com o diagrama físico do banco de dados antes da implementação.

As entidades LOG_ACESSO e REGISTRO_PONTO foram descritas com base em uma estrutura sugerida para suas finalidades. Seus atributos devem ser ajustados caso o diagrama atual apresente campos diferentes.
### Cardinalidades Adotadas

| Relacionamento | Cardinalidade |
|---|---|
| EMPRESA → PAGAMENTOS | 1:N |
| EMPRESA → FUNCIONARIOS | 1:N |
| FUNCIONARIOS → EXTRAS | 1:1 |
| EMPRESA → TERCEIRIZADAS | 1:N |
| EMPRESA → OBRA | 1:N |
| OBRA → GERENCIAMENTO | 1:1 |
| OBRA → TAREFA_OBRA | 1:N |
| EMPRESA → ICONE | 1:N |

### Restrições e Políticas Organizacionais

- O `id_pagamento` deve ser único.
- O CPF do funcionário deve ser único.
- O CPF de EXTRAS deve corresponder a um funcionário existente.
- O CNPJ da empresa terceirizada deve ser único.
- O nome da obra deve identificar uma única obra.
- Uma tarefa deve estar relacionada a uma obra existente.
- Um registro de gerenciamento deve estar relacionado a uma obra existente.
- Os valores bruto, descontado e líquido registrados em EXTRAS devem manter consistência entre si.
- Os status de obras, tarefas e pagamentos devem seguir valores padronizados.

---
