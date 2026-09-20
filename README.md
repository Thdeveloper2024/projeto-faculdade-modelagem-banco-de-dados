# Modelagem de Banco de Dados para Empreiteira EJS

## Introdução

Atualmente, a empresa apresenta um baixo número de obras em andamento e ainda possui limitações relacionadas à presença digital e à divulgação de seus serviços e obras realizadas. Além disso, a empresa enfrenta dificuldades no gerenciamento dos horários de entrada e saída dos funcionários, o que pode ocasionar divergências no controle das horas trabalhadas e, consequentemente, nos pagamentos realizados aos colaboradores.

Outro problema identificado está relacionado ao controle dos pagamentos realizados pela empresa. Quando os pagamentos não são devidamente registrados, torna-se difícil verificar posteriormente os valores pagos, as datas, os comprovantes, o formato utilizado e a situação de cada pagamento. Essa falta de controle pode ocasionar dificuldades na organização financeira e administrativa da empresa.

O objetivo do grupo é realizar a atualização e implementação de um site para a empresa, tornando-o ativo e utilizando-o como ferramenta de divulgação de seus serviços e obras realizadas. Dessa forma, busca-se criar uma presença digital para a empresa e, futuramente, possibilitar investimentos em marketing digital, ampliando seu alcance ao público da internet e contribuindo para a captação de novos clientes e obras.

Além da divulgação, o projeto terá como objetivo implementar funcionalidades de gerenciamento dos funcionários, controle de horas extras e horas devidas, registro de pagamentos, cadastro de empresas terceirizadas, gerenciamento das obras, responsáveis pelo gerenciamento das obras, tarefas e ícones utilizados pelo sistema.

Para o armazenamento e gerenciamento dessas informações, será desenvolvido um banco de dados estruturado a partir da entidade principal **EMPRESA**, da qual se relacionam as entidades **PAGAMENTOS**, **FUNCIONARIOS**, **TERCEIRIZADAS**, **OBRA** e **ICONE**. A entidade **FUNCIONARIOS** possui ainda a entidade dependente **EXTRAS**, enquanto **OBRA** possui as entidades **GERENCIAMENTO** e **TAREFA_OBRA**.

Dessa forma, o projeto estará concentrado na refatoração do site existente, na implementação das funcionalidades de gerenciamento e no desenvolvimento do banco de dados, não abrangendo, nesta etapa, outros sistemas ou funcionalidades que não estejam diretamente relacionados aos objetivos definidos.

---

## Desenvolvimento

O projeto teve início com a análise dos principais problemas encontrados na empresa e com a identificação de possíveis soluções. A partir dessa análise, foi elaborado um modelo inicial para representar a estrutura das informações e a forma como os dados poderiam ser armazenados.

Com a evolução do projeto, o modelo foi reorganizado para utilizar a entidade **EMPRESA** como elemento central do banco de dados. A partir dela são organizados os pagamentos, funcionários, empresas terceirizadas, obras e ícones. Também foram separadas informações específicas de horas e valores adicionais dos funcionários na entidade **EXTRAS**, e informações específicas das obras nas entidades **GERENCIAMENTO** e **TAREFA_OBRA**.

O README documenta a caracterização da organização, os processos de negócio, os requisitos do sistema, as regras de negócio, o dicionário de dados, a modelagem conceitual e as justificativas técnicas adotadas.

### Caracterização da Organização

- **Nome e natureza da organização:** *ERENILDO JOSE DA SILVA CONSTRUCAO - ME / Prestação de serviços na construção civil, com foco em aplicação de revestimentos, resinas e reformas em geral.*
- **Contexto e porte:** Empresa com fins lucrativos atuando no setor de construção civil e empreitadas. A operação é de médio porte, contando com um volume constante de até 3 obras simultâneas. A equipe envolve cerca de 18 colaboradores no total, sendo composta por 1 engenheiro civil, responsável pela administração e criação de orçamentos, e 17 operários de campo, divididos entre mestres de obras, pedreiros e serventes. O volume mensal de atividades inclui a gestão de diversas tarefas por obra e o processamento de pagamentos e custos operacionais recorrentes.
- **Problemas e necessidades identificados:** A empresa enfrenta dificuldades no controle de assiduidade e pontualidade dos colaboradores, visto que atrasos frequentes podem ocorrer nos canteiros de obras sem o devido registro ou compensação das horas devidas. Também existem dificuldades no registro de pagamentos, horas extras, valores descontados e valores líquidos. Além disso, a organização possui necessidade de ampliar sua presença digital e melhorar a divulgação de seus serviços e obras realizadas.
- **Justificativa da escolha:** A escolha desta organização baseou-se no fato de ela apresentar problemas operacionais e de comunicação comuns em empresas do setor de construção civil. O cenário permite a aplicação prática dos conceitos de modelagem de banco de dados em um contexto real de gestão de funcionários, pagamentos, terceirizadas, obras e tarefas.
- **Evidências da organização:** *Site: https://empreiteira-ejs.vercel.app/index.html / Telefone: 11 98606-9654 / Instagram: https://www.instagram.com/ejs.empreiteira?igsh=MTdxcGNqZXpuNzcydQ%3D%3D&utm_source=qr*

---

### Processos de Negócio

- Cadastrar e manter os dados da empresa.
- Registrar pagamentos realizados pela empresa.
- Cadastrar e gerenciar funcionários.
- Registrar horas extras, horas devidas e valores relacionados aos funcionários.
- Cadastrar e gerenciar empresas terceirizadas.
- Cadastrar e acompanhar obras.
- Registrar os responsáveis pelo gerenciamento de cada obra.
- Criar e acompanhar tarefas vinculadas às obras.
- Cadastrar e manter ícones utilizados pela aplicação.

Os fluxogramas deverão representar visualmente os processos-chave e demonstrar como eles se integram à entidade principal **EMPRESA** e às entidades dependentes.

---

### Requisitos do Sistema

#### Requisitos Funcionais

- **RF-01:** O sistema deve permitir o cadastro e a manutenção das informações da empresa.
- **RF-02:** O sistema deve permitir o cadastro de funcionários, armazenando identificador, nome, CPF, cargo, salário definido, data de recebimento do salário e benefícios.
- **RF-03:** O sistema deve permitir o registro das informações adicionais dos funcionários na entidade **EXTRAS**, incluindo horas extras, valor bruto, valor descontado, valor líquido e horas que o funcionário deve.
- **RF-04:** O sistema deve permitir o registro e o gerenciamento dos pagamentos da empresa, armazenando valor pago, data, comprovante, formato de pagamento e status.
- **RF-05:** O sistema deve permitir o cadastro de empresas terceirizadas, armazenando identificador, nome da empresa, CNPJ e valor do serviço prestado.
- **RF-06:** O sistema deve permitir o cadastro de obras, registrando identificador, nome, endereço, período, status, descrição e horários de entrada e saída.
- **RF-07:** O sistema deve permitir o registro do gerenciamento de cada obra, contendo o nome do engenheiro, arquiteto e mestre de obra.
- **RF-08:** O sistema deve permitir a criação e o gerenciamento de tarefas vinculadas às obras, acompanhando nome, descrição, data de execução e status.
- **RF-09:** O sistema deve permitir o cadastro de ícones, armazenando identificador, nome, descrição e imagem do ícone.

#### Requisitos Não Funcionais

- **RNF-01 (Segurança):** O sistema deve garantir controle de acesso às informações administrativas e financeiras, principalmente às entidades **PAGAMENTOS**, **FUNCIONARIOS** e **EXTRAS**.
- **RNF-02 (Usabilidade/Portabilidade):** A interface do sistema deve ser responsiva e otimizada para dispositivos móveis, facilitando o uso por responsáveis e profissionais diretamente no canteiro de obras.
- **RNF-03 (Disponibilidade):** O sistema deve ser baseado em nuvem e possuir disponibilidade adequada para permitir acesso contínuo às informações da empresa e das obras.
- **RNF-04 (Desempenho):** Consultas comuns de funcionários, pagamentos, obras e tarefas devem apresentar tempo de resposta compatível com o uso operacional do sistema.

---

### Regras de Negócio

- A entidade **EMPRESA** será a entidade principal do modelo e centralizará os relacionamentos com pagamentos, funcionários, terceirizadas, obras e ícones.
- Cada pagamento deverá possuir um `id_pagamento` único.
- Cada funcionário deverá possuir um CPF único, utilizado como chave primária da entidade **FUNCIONARIOS**.
- A entidade **EXTRAS** utilizará o CPF como chave primária e estará vinculada ao funcionário correspondente.
- Cada empresa terceirizada deverá possuir um CNPJ único, utilizado como chave primária da entidade **TERCEIRIZADAS**.
- Cada obra será identificada pelo atributo `nome_obra`, utilizado como chave primária da entidade **OBRA**.
- Cada obra poderá possuir informações de gerenciamento contendo engenheiro, arquiteto e mestre de obra.
- Cada tarefa de obra deverá possuir um `id_tarefa` único e deverá estar associada a uma obra.
- Cada ícone deverá possuir um `id_icone` único.
- Valores monetários devem ser armazenados em formato adequado e não devem aceitar valores negativos quando isso não fizer sentido para a operação.
- Horas extras e horas devidas não devem aceitar valores negativos.
- Os status de pagamentos, obras e tarefas devem utilizar valores padronizados pelo sistema.

#### Restrições Organizacionais

A modelagem deverá considerar que a empresa trabalha com funcionários próprios e empresas terceirizadas. Essas duas categorias são representadas separadamente para evitar a mistura de informações de pessoas físicas com informações de pessoas jurídicas.

Os dados financeiros diretamente relacionados a horas adicionais dos funcionários foram separados na entidade **EXTRAS**, enquanto a entidade **PAGAMENTOS** registra as operações de pagamento da empresa.

As informações específicas de uma obra foram distribuídas entre **OBRA**, **GERENCIAMENTO** e **TAREFA_OBRA**, permitindo separar os dados gerais da obra, seus responsáveis e suas atividades.

O modelo atual está limitado às entidades definidas no DER e não inclui, nesta etapa, entidades independentes para clientes, materiais, equipamentos, contratos ou fornecedores.

---

# Dicionário de Dados — Sistema de Gestão de Obras

## 1. Visão Geral

O sistema tem como objetivo organizar e gerenciar informações relacionadas à empresa, pagamentos, funcionários, horas extras e devidas, empresas terceirizadas, obras, gerenciamento das obras, tarefas e ícones utilizados na aplicação.

O modelo de dados apresenta as seguintes entidades:

- **EMPRESA**
- **PAGAMENTOS**
- **FUNCIONARIOS**
- **EXTRAS**
- **TERCEIRIZADAS**
- **OBRA**
- **GERENCIAMENTO**
- **TAREFA_OBRA**
- **ICONE**

A entidade **EMPRESA** ocupa a posição principal do modelo. As entidades **PAGAMENTOS**, **FUNCIONARIOS**, **TERCEIRIZADAS**, **OBRA** e **ICONE** são relacionadas diretamente à empresa. A entidade **EXTRAS** depende de **FUNCIONARIOS**, enquanto **GERENCIAMENTO** e **TAREFA_OBRA** dependem de **OBRA**.

---

## 2. Entidades e Atributos

### 2.1 EMPRESA

A entidade **EMPRESA** representa a organização principal do sistema e serve como origem dos relacionamentos com as demais entidades principais.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `id_empresa` | Identificador interno da empresa. | INT, chave primária | Deve ser único e obrigatório. |
| `nome_empresa` | Nome da empresa. | VARCHAR(150) | Deve ser informado. |
| `cnpj_empresa` | CNPJ da empresa. | CHAR(14), UNIQUE | Deve ser único quando utilizado. |
| `razao_social` | Razão social da empresa. | VARCHAR(200) | Deve representar o nome empresarial oficial. |
| `endereco` | Endereço da empresa. | VARCHAR(255) | Deve representar a localização cadastrada. |
| `telefone` | Telefone de contato. | VARCHAR(20) | Deve possuir formato válido. |
| `email` | E-mail da empresa. | VARCHAR(150) | Deve possuir formato válido. |

**Chave primária:** `id_empresa`.

---

### 2.2 PAGAMENTOS

A entidade **PAGAMENTOS** registra os pagamentos realizados pela empresa.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `id_pagamento` | Identificador único do pagamento. | INT, chave primária | Deve ser único e obrigatório. |
| `valor_pago` | Valor efetivamente pago. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |
| `data_pagamento` | Data em que o pagamento foi realizado. | DATE | Deve representar uma data válida. |
| `comprovante_pagamento` | Referência ou caminho do comprovante. | VARCHAR(255) | Pode ser preenchido quando houver comprovante. |
| `formato_pagamento` | Formato utilizado para realizar o pagamento. | VARCHAR(50) | Deve utilizar valores padronizados pelo sistema. |
| `status_pagamento` | Situação atual do pagamento. | VARCHAR(30) | Deve utilizar status padronizados. |

**Chave primária:** `id_pagamento`.

---

### 2.3 FUNCIONARIOS

A entidade **FUNCIONARIOS** armazena os dados dos funcionários vinculados à empresa.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `id_funcionario` | Identificador interno do funcionário. | INT | Pode ser utilizado como identificador auxiliar. |
| `nome_funcionario` | Nome completo do funcionário. | VARCHAR(150) | Deve ser informado. |
| `cpf` | CPF do funcionário. | CHAR(11), chave primária | Deve ser único e obrigatório. |
| `cargo` | Cargo ou função exercida. | VARCHAR(100) | Deve representar a função do funcionário. |
| `salario_definido` | Salário definido para o funcionário. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |
| `data_recebimento_salario` | Data prevista ou registrada para recebimento do salário. | DATE | Deve representar uma data válida. |
| `beneficio_funcionario` | Benefícios associados ao funcionário. | TEXT | Pode ser preenchido quando houver benefícios. |

**Chave primária:** `cpf`.

---

### 2.4 EXTRAS

A entidade **EXTRAS** armazena as informações complementares de horas e valores relacionadas aos funcionários.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `cpf` | CPF do funcionário ao qual o registro pertence. | CHAR(11), chave primária | Deve corresponder a um funcionário existente. |
| `nome_funcionario` | Nome do funcionário. | VARCHAR(150) | Deve corresponder ao funcionário relacionado. |
| `horas_extras` | Quantidade de horas extras registradas. | DECIMAL(5,2) | Não pode ser negativa. |
| `valor_bruto` | Valor bruto calculado para o registro. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |
| `valor_descontado` | Valor descontado. | DECIMAL(10,2) | Não pode ser negativo. |
| `valor_liquido` | Valor líquido resultante. | DECIMAL(10,2) | Deve ser consistente com os valores bruto e descontado. |
| `horas_funcionario_deve` | Quantidade de horas devidas pelo funcionário. | DECIMAL(5,2) | Não pode ser negativa. |

**Chave primária:** `cpf`.

**Observação de modelagem:** como o CPF é a chave primária tanto em **FUNCIONARIOS** quanto em **EXTRAS**, o modelo atual permite apenas um registro de EXTRAS por funcionário. Portanto, esse relacionamento é tratado como **1:1**. Caso seja necessário manter histórico de vários registros de extras para o mesmo funcionário, será necessário futuramente criar um identificador próprio, como `id_extra`.

---

### 2.5 TERCEIRIZADAS

A entidade **TERCEIRIZADAS** armazena os dados das empresas terceirizadas que prestam serviços para a empresa principal.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `id_empresa` | Identificador interno da empresa terceirizada. | INT | Pode ser utilizado como identificador auxiliar. |
| `nome_empresa` | Nome da empresa terceirizada. | VARCHAR(150) | Deve ser informado. |
| `cnpj_empresa` | CNPJ da empresa terceirizada. | CHAR(14), chave primária | Deve ser único e obrigatório. |
| `valor_servico_prestado` | Valor do serviço prestado pela terceirizada. | DECIMAL(10,2) | Deve ser igual ou superior a zero. |

**Chave primária:** `cnpj_empresa`.

---

### 2.6 OBRA

A entidade **OBRA** armazena as principais informações relacionadas às obras administradas pela empresa.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `id_obra` | Identificador interno da obra. | INT | Pode ser utilizado como identificador auxiliar. |
| `nome_obra` | Nome da obra. | VARCHAR(150), chave primária | Deve identificar uma única obra. |
| `endereco_obra` | Endereço onde a obra está localizada. | VARCHAR(255) | Deve representar a localização da obra. |
| `tempo_inicio` | Data ou horário de início da obra. | DATETIME | Deve representar o início previsto ou realizado. |
| `tempo_fim` | Data ou horário de término da obra. | DATETIME | Não deve ser anterior ao início. |
| `status` | Situação atual da obra. | VARCHAR(30) | Deve utilizar valores padronizados. |
| `descricao` | Descrição geral da obra. | TEXT | Deve apresentar informações relevantes. |
| `horario_entrada` | Horário de entrada previsto ou definido para a obra. | TIME | Deve representar um horário válido. |
| `horario_saida` | Horário de saída previsto ou definido para a obra. | TIME | Deve representar um horário válido. |

**Chave primária:** `nome_obra`.

---

### 2.7 GERENCIAMENTO

A entidade **GERENCIAMENTO** armazena os responsáveis pelo gerenciamento de uma obra.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `nome_engenheiro` | Nome do engenheiro responsável pela obra. | VARCHAR(150) | Pode ser informado quando houver engenheiro responsável. |
| `nome_arquiteto` | Nome do arquiteto responsável pela obra. | VARCHAR(150) | Pode ser informado quando houver arquiteto responsável. |
| `nome_mestre_obra` | Nome do mestre de obra responsável. | VARCHAR(150) | Pode ser informado quando houver mestre de obra responsável. |

**Chave primária:** não foi definida no diagrama atual.

**Regra de negócio:** o registro de gerenciamento pertence a uma obra específica. No modelo atual, o relacionamento é tratado como **1:1** entre **OBRA** e **GERENCIAMENTO**.

---

### 2.8 TAREFA_OBRA

A entidade **TAREFA_OBRA** armazena as tarefas relacionadas às obras.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `id_tarefa` | Identificador único da tarefa. | INT, chave primária | Deve ser único e obrigatório. |
| `nome_tarefa` | Nome da tarefa. | VARCHAR(150) | Deve permitir identificar a atividade. |
| `descricao_tarefa` | Descrição da tarefa a ser realizada. | TEXT | Deve detalhar a atividade quando necessário. |
| `data_execucao` | Data prevista ou registrada para execução. | DATE | Deve representar uma data válida. |
| `status_tarefa` | Situação atual da tarefa. | VARCHAR(30) | Deve utilizar valores padronizados. |

**Chave primária:** `id_tarefa`.

---

### 2.9 ICONE

A entidade **ICONE** armazena os ícones utilizados pela empresa na aplicação.

| Atributo | Descrição | Tipo sugerido | Regra de negócio associada |
|---|---|---|---|
| `id_icone` | Identificador único do ícone. | INT, chave primária | Deve ser único e obrigatório. |
| `nome_icone` | Nome do ícone. | VARCHAR(100) | Deve facilitar a identificação do recurso visual. |
| `descricao` | Descrição da finalidade do ícone. | TEXT | Pode detalhar a finalidade do ícone. |
| `imagem_icone` | Referência ou caminho da imagem. | VARCHAR(255) | Deve apontar para o recurso visual correspondente. |

**Chave primária:** `id_icone`.

---

## Modelagem Conceitual — Entidades, Atributos e Relacionamentos

### Entidades Reconhecidas

- **EMPRESA:** representa a empresa principal do sistema.
- **PAGAMENTOS:** representa os pagamentos registrados pela empresa.
- **FUNCIONARIOS:** representa os funcionários vinculados à empresa.
- **EXTRAS:** representa horas extras, horas devidas e valores complementares dos funcionários.
- **TERCEIRIZADAS:** representa as empresas terceirizadas contratadas.
- **OBRA:** representa as obras administradas pela empresa.
- **GERENCIAMENTO:** representa os responsáveis pelo gerenciamento das obras.
- **TAREFA_OBRA:** representa as tarefas executadas dentro das obras.
- **ICONE:** representa os ícones utilizados na aplicação.

### Chaves Primárias

- **EMPRESA:** `id_empresa`.
- **PAGAMENTOS:** `id_pagamento`.
- **FUNCIONARIOS:** `cpf`.
- **EXTRAS:** `cpf`.
- **TERCEIRIZADAS:** `cnpj_empresa`.
- **OBRA:** `nome_obra`.
- **GERENCIAMENTO:** chave primária não definida no diagrama atual.
- **TAREFA_OBRA:** `id_tarefa`.
- **ICONE:** `id_icone`.

### Relacionamentos Pertinentes

- **EMPRESA — possui — PAGAMENTOS:** uma empresa pode possuir vários pagamentos.
- **EMPRESA — possui — FUNCIONARIOS:** uma empresa pode possuir vários funcionários.
- **FUNCIONARIOS — possui — EXTRAS:** cada funcionário possui, no modelo atual, no máximo um registro de extras identificado pelo mesmo CPF.
- **EMPRESA — possui — TERCEIRIZADAS:** uma empresa pode se relacionar com várias empresas terceirizadas.
- **EMPRESA — possui — OBRA:** uma empresa pode possuir várias obras.
- **OBRA — possui — GERENCIAMENTO:** cada obra possui um conjunto de responsáveis pelo seu gerenciamento.
- **OBRA — possui — TAREFA_OBRA:** uma obra pode possuir várias tarefas.
- **EMPRESA — possui — ICONE:** uma empresa pode possuir vários ícones cadastrados.

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
- Cada tarefa deve possuir um `id_tarefa` único.
- Cada ícone deve possuir um `id_icone` único.
- Uma tarefa deve estar relacionada a uma obra existente.
- Um registro de gerenciamento deve estar relacionado a uma obra existente.
- Os valores bruto, descontado e líquido registrados em EXTRAS devem manter consistência entre si.
- Os status de obras, tarefas e pagamentos devem seguir valores padronizados.

---

### Diagrama Entidade-Relacionamento (DER)

O DER atualizado está representado no arquivo abaixo:

![Diagrama Entidade-Relacionamento atualizado](./DER_EJS_ATUALIZADO.png)

---

### Justificativa Técnica

A modelagem conceitual foi reorganizada para utilizar **EMPRESA** como entidade principal. Essa decisão permite concentrar a estrutura do banco em torno da organização que administra pagamentos, funcionários, empresas terceirizadas, obras e recursos visuais do sistema.

A entidade **PAGAMENTOS** foi mantida separada para registrar cada operação de pagamento individualmente. O atributo `id_pagamento` funciona como chave primária, permitindo que a empresa mantenha vários registros de pagamento sem duplicar os dados principais da organização.

A entidade **FUNCIONARIOS** utiliza o **CPF** como chave primária, conforme a regra definida para o novo modelo. Os dados diretamente relacionados ao vínculo profissional permanecem nessa entidade, enquanto horas extras, horas devidas e valores financeiros complementares foram transferidos para **EXTRAS**.

A criação da entidade **EXTRAS** evita concentrar informações variáveis de horas e cálculos financeiros dentro de FUNCIONARIOS. Como o CPF também é a chave primária de EXTRAS, o modelo atual representa uma relação 1:1. Caso o sistema precise armazenar histórico de vários períodos de extras para um mesmo funcionário, essa estrutura deverá ser revisada futuramente.

A entidade **TERCEIRIZADAS** foi criada para separar as empresas prestadoras de serviço dos funcionários próprios. O **CNPJ** foi definido como chave primária, permitindo distinguir corretamente uma pessoa jurídica de um funcionário identificado por CPF.

A entidade **OBRA** reúne os dados gerais de cada obra. O atributo `nome_obra` foi definido como chave primária conforme a regra estabelecida para o projeto, enquanto `id_obra` permanece como identificador auxiliar.

A entidade **GERENCIAMENTO** foi separada de OBRA para concentrar os nomes dos responsáveis técnicos e operacionais, como engenheiro, arquiteto e mestre de obra. Dessa forma, os dados gerais da obra não ficam misturados com os dados das pessoas responsáveis por sua gestão.

A entidade **TAREFA_OBRA** permanece separada porque cada obra pode possuir diversas atividades que precisam ser acompanhadas individualmente. O `id_tarefa` permite identificar cada tarefa, independentemente de seu nome.

A entidade **ICONE** está diretamente vinculada à empresa e centraliza os recursos visuais utilizados pelo sistema. Isso evita repetir os mesmos dados de imagem e descrição em diferentes partes da aplicação.

Quanto às cardinalidades, **EMPRESA** possui relacionamentos 1:N com **PAGAMENTOS**, **FUNCIONARIOS**, **TERCEIRIZADAS**, **OBRA** e **ICONE**. A relação entre **FUNCIONARIOS** e **EXTRAS** é 1:1 no modelo atual, pois ambas utilizam CPF como chave primária. A relação entre **OBRA** e **GERENCIAMENTO** também é tratada como 1:1, enquanto **OBRA** e **TAREFA_OBRA** possuem relação 1:N.

As restrições de integridade devem garantir que as chaves primárias sejam únicas e que os registros dependentes estejam associados às respectivas entidades principais. Também devem ser aplicadas validações de formato para CPF, CNPJ, datas, horários e valores monetários.

Por fim, o modelo foi estruturado de forma modular para permitir evolução futura. Entidades como clientes, materiais, equipamentos, contratos, fornecedores ou histórico detalhado de horas poderão ser adicionadas posteriormente sem exigir a reconstrução completa da estrutura principal.

---

### Uso de Inteligência Artificial

O grupo utilizou uma ferramenta de inteligência artificial como apoio na revisão e reorganização da documentação do projeto.

| Item | Registro |
|---|---|
| **Ferramenta e etapa** | ChatGPT — revisão do README e adequação do dicionário de dados ao novo DER. |
| **Motivação** | Reorganizar a documentação para que as entidades, atributos, chaves primárias, relacionamentos e justificativas técnicas ficassem coerentes com o novo diagrama. |
| **Prompt utilizado** | Solicitação para reajustar o `README.md` de acordo com o novo diagrama entidade-relacionamento apresentado pelo grupo. |
| **Resposta recebida** | Reorganização das seções de requisitos, regras de negócio, dicionário de dados, modelagem conceitual, relacionamentos e justificativa técnica. |
| **Fontes consultadas e verificadas** | O conteúdo foi confrontado com o DER e com as regras fornecidas pelo próprio grupo. |
| **Trechos rejeitados ou corrigidos** | Informações do modelo anterior que não faziam mais parte do novo DER foram removidas ou substituídas. |
| **Justificativa da escolha final** | Foram mantidas apenas as estruturas compatíveis com o modelo atualizado e com as regras definidas para as entidades. |
| **Reflexão crítica** | A IA foi utilizada como ferramenta de apoio. A validação final das regras de negócio, chaves primárias, cardinalidades e nomes dos atributos permanece responsabilidade do grupo. |

---

## Conclusão

A atualização da modelagem permitiu reorganizar o banco de dados da Empreiteira EJS a partir de uma entidade central denominada **EMPRESA**. Essa mudança tornou mais clara a separação entre pagamentos, funcionários, informações de extras, empresas terceirizadas, obras, responsáveis pelo gerenciamento, tarefas e ícones.

A nova estrutura facilita a compreensão das responsabilidades de cada entidade, reduz a concentração de informações em tabelas genéricas e prepara o projeto para futuras implementações no banco de dados e no sistema web.

Como próximos passos, o grupo poderá transformar o modelo conceitual em modelo lógico e físico, definir as chaves estrangeiras, implementar as tabelas no sistema gerenciador de banco de dados escolhido e realizar testes de integridade, cadastro, consulta, atualização e exclusão dos registros.

---

## Referências Bibliográficas

As referências bibliográficas utilizadas pelo grupo deverão ser adicionadas nesta seção conforme as fontes efetivamente consultadas durante o desenvolvimento do trabalho.

---

## Critérios Atitudinais (20%)

**Estes critérios não constam explicitamente como item de entrega no README.** Eles são avaliados por meio de Avaliação 360º entre os integrantes do grupo.

- **Participação (5%):** envolvimento nas discussões técnicas e nas decisões do grupo.
- **Comprometimento (5%):** cumprimento de prazos e responsabilidades assumidas.
- **Colaboração (5%):** respeito às contribuições dos colegas e cooperação na construção do projeto.
- **Autonomia (5%):** busca independente de soluções e proposta de melhorias.

---

## Resumo dos Pesos

| Dimensão | Peso total |
|---|---|
| Conceitual (contexto, requisitos/regras, modelagem, justificativa técnica) | 30% |
| Procedimental (requisitos, fluxogramas, dicionário de dados, DER) | 50% |
| Atitudinal (participação, comprometimento, colaboração, autonomia) | 20% |

**Entrega final:** `README.md` completo + DER atualizado anexado no repositório GitHub do grupo.
