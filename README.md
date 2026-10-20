# Modelagem de Banco de Dados para Empreiteira EJS

Membros:


Leonardo Victor
Rgm: 47269294

Maurício de Moura junior 
Rgm: 46898891

Thiago Pinho Macedo Araújo 
Rgm: 47016604

Anny Isabelly Silva Santos 
Rgm: 4729005-6

Cauã Victor da Silva Pena
Rgm: 04677095-0

---

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

Com a evolução do projeto, o modelo foi reorganizado para realizar uma arquitetura de como o banco de dados irá armazenar as informações cadastradas, durante o periodo do desenvolvimento nosso grupo sofreu alguns inpases, pois não compreendeu muito bem o modelo de projeto, até que o estrutor auxiliou nosso grupo com os detalhes do projeto e conseguimos compreender, o desenvolvimento desse projeto foi uma evolção e aprendizado dos erros que ocoreram na realização do processo.

O integrante Thiago que trabalha na empresa realizou uma entrevista com o dono, e mapeou as informações que deveria ser salvas em um banco de dados, pois o mesmo já estava desenvolvendo um site web para a instituição, e ficou mais facil de identificar alguns pontos, a foto da entrevista foi tirada na residencia do dono da empresa, pois a empresa não possui um endereço proprio e uma grande parte das reuniões são realizadas ou na residencia do dono, ou nas obras em execução, nessa entrevista foi feita algumas perguntas ao dono da empresa, como quais são os maiores problemas enfrentados, e foi feito uma apuração que atualmente o dono tem um grnade problema com relação a questão de coneguir 

### Caracterização da Organização

- **Nome e natureza da organização:** *ERENILDO JOSE DA SILVA CONSTRUCAO - ME / Prestação de serviços na construção civil, com foco em aplicação de revestimentos, resinas, pintura, limpezas após obras e reformas em geral.*
- **Contexto e porte:** Empresa com fins lucrativos atuando no setor de construção civil e empreitadas. A operação é de médio porte, contando com um volume constante de até 3 obras simultâneas. A equipe envolve cerca de 18 colaboradores no total, sendo composta por 1 engenheiro civil, responsável pela administração e criação de orçamentos, e 17 operários de campo, divididos entre mestres de obras, pedreiros e serventes. O volume mensal de atividades inclui a gestão de diversas tarefas por obra e o processamento de pagamentos e custos operacionais recorrentes.
- **Problemas e necessidades identificados:** A empresa enfrenta dificuldades no controle de assiduidade e pontualidade dos colaboradores, visto que atrasos frequentes podem ocorrer nos canteiros de obras sem o devido registro ou compensação das horas devidas. Também existem dificuldades no registro de pagamentos, horas extras, valores descontados e valores líquidos. Além disso, a organização possui necessidade de ampliar sua presença digital e melhorar a divulgação de seus serviços e obras realizadas.
- **Justificativa da escolha:** A escolha dessa empresa foi dada devido há um dos colaboradores o Thiago está trabalhando na empresa, e ter notado algumas icoerencias com relação ao gerenciamento de obras e funcionarios, o mesmo apresentou a empresa para o grupo e todos toparam aceitar o desafio de desenvolver um banco de dados para armazenar as informações, o dono da empresa atualmente no dia 07/10/2026 ainda anota pagamentos e horas trabalhadas tudo em cadernetas um problema gravisimo a ser resolvido.
- **Evidências da organização:** *CNPJ: 384180600001 / Site: https://empreiteira-ejs.vercel.app/index.html / Telefone: 11 98606-9654 / Instagram: https://www.instagram.com/ejs.empreiteira?igsh=MTdxcGNqZXpuNzcydQ%3D%3D&utm_source=qr*

---

### Processos de Negócio

| Processo | Grupo | Descritivo |
|---|---|---|
| Atendimento de clientes | Vendas | O processo inicia quando o cliente entra em contato com a EJS Construção por meio do site, telefone ou indicação. A empresa identifica as necessidades do cliente, coleta as informações iniciais e encaminha a solicitação para avaliação e elaboração do orçamento. |
| Elaboração de orçamento de obra | Vendas | O engenheiro analisa as características da obra, realiza ou avalia as medições necessárias, estima os custos de materiais, mão de obra e serviços terceirizados e define as condições de pagamento. O orçamento é apresentado ao cliente para aprovação. |
| Formalização do contrato | Vendas | Após a aprovação do orçamento pelo cliente, a empresa formaliza o contrato, registrando o escopo dos serviços, os valores acordados, as condições de pagamento, os prazos e as responsabilidades das partes. Com a formalização, a obra é encaminhada para planejamento e execução. |
| Execução e acompanhamento da obra | Gestão de obras | O engenheiro ou mestre de obras organiza as atividades, acompanha a execução dos serviços, verifica o cumprimento do planejamento e controla a qualidade do trabalho. Quando necessário, identifica atrasos, necessidades de materiais e ajustes operacionais. |
| Faturamento e recebimento de clientes | Financeiro | O setor financeiro acompanha os valores e vencimentos estabelecidos no contrato, registra as cobranças e os recebimentos e controla os recursos destinados às despesas operacionais e aos custos das obras. |
| Compra e fornecimento de materiais | Compras | A empresa identifica os materiais necessários para cada etapa da obra e informa as quantidades e especificações ao cliente, que normalmente realiza a compra. Quando surgem necessidades emergenciais, o financeiro, em conjunto com a gestão da obra, pode realizar a aquisição, encaminhando a respectiva nota fiscal ao cliente. |
| Contratação de empresas terceirizadas | Compras | A empresa identifica a necessidade de serviços especializados, solicita e compara propostas de prestadores terceirizados, avalia os valores e as condições oferecidas e seleciona o fornecedor mais adequado. Após a aprovação, são formalizadas as condições da contratação e a programação do serviço. |
| Pagamento de funcionários e terceirizados | Financeiro | O setor financeiro verifica os valores devidos, confere as informações necessárias e registra os pagamentos realizados aos funcionários e às empresas terceirizadas, mantendo os comprovantes e os registros financeiros correspondentes. |
| Cadastro e manutenção de funcionários | Administrativo | O setor administrativo registra e mantém atualizados os dados dos funcionários, incluindo informações pessoais, funcionais, contratuais e necessárias à gestão da equipe. |
| Controle de ponto dos funcionários | Administrativo | A empresa registra os horários de entrada e saída dos funcionários por meio do cartão de ponto ou de outro mecanismo adotado. Os registros são organizados por funcionário e data para apuração da jornada, das faltas e das horas extras. |
| Apuração de horas extras e descontos | Financeiro | Com base nos registros de ponto e nas informações de faltas e ausências, são apuradas as horas extras e os descontos aplicáveis, respeitando as regras trabalhistas e os critérios de remuneração adotados pela empresa. Os valores calculados são encaminhados para processamento da folha e pagamento. |
| Alocação de funcionários às obras | Gestão de obras | O responsável pela gestão de obras verifica as necessidades de cada projeto e distribui os funcionários conforme suas funções, qualificações, disponibilidade e cronograma, ajustando a equipe de acordo com o andamento dos serviços. |

<img width="2084" height="3750" alt="image" src="https://github.com/Thdeveloper2024/projeto-faculdade-modelagem-banco-de-dados/blob/main/fluxo-grama.png" />


---

### Requisitos do Sistema

#### Requisitos Funcionais

- **RF-01:** O sistema deve permitir o cadastro e a edição dos dados.
- **RF-02:** O sistema deve permitir o cadastro de funcionários, armazenando identificador, nome, CPF, cargo, salário definido, data de recebimento do salário e benefícios.
- **RF-03:** O sistema deve permitir o registro das informações adicionais dos funcionários na entidade **EXTRAS**, incluindo horas extras, valor bruto, valor descontado, valor líquido e horas que o funcionário deve.
- **RF-04:** O sistema deve permitir o registro e o gerenciamento dos pagamentos da empresa, armazenando valor pago, data, comprovante, formato de pagamento e status.
- **RF-05:** O sistema deve permitir o cadastro de empresas terceirizadas, armazenando identificador, nome da empresa, CNPJ e valor do serviço prestado.
- **RF-06:** O sistema deve permitir o cadastro de obras, registrando identificador, nome, endereço, período, status, descrição e horários de entrada e saída.
- **RF-07:** O sistema deve permitir o registro do gerenciamento de cada obra, contendo o nome do engenheiro, arquiteto e mestre de obra.
- **RF-08:** O sistema deve permitir a criação e o gerenciamento de tarefas vinculadas às obras, acompanhando nome, descrição, data de execução e status.
- **RF-09:** O sistema deve permitir o registro dos horários de entrada e saída dos funcionários, identificando o funcionário, a data, o horário registrado e a obra relacionada.
- **RF-11:** O sistema deve permitir o registro dos intervalos de trabalho, quando aplicável, para o cálculo correto da jornada diária.
- **RF-12:** O sistema deve calcular as horas trabalhadas com base nos registros de ponto e nas regras de jornada estabelecidas pela empresa.
- **RF-13:** O sistema deve identificar e registrar horas extras, atrasos e faltas com base na jornada prevista e nos registros realizados.
- **RF-14:** O sistema deve permitir consultar e emitir relatórios de ponto por funcionário, período e obra.

- 
#### Requisitos Não Funcionais

- **RNF-01 (Segurança):** O sistema deve garantir controle de acesso às informações administrativas e financeiras, principalmente às entidades **PAGAMENTOS**, **FUNCIONARIOS** e **EXTRAS**.
- **RNF-02 (Usabilidade/Portabilidade):** A interface do sistema deve ser responsiva e otimizada para dispositivos móveis, facilitando o uso por responsáveis e profissionais diretamente no canteiro de obras.
- **RNF-03 (Disponibilidade):** O sistema deve ser baseado em nuvem e possuir disponibilidade adequada para permitir acesso contínuo às informações da empresa e das obras.
- **RNF-04 (Desempenho):** Consultas comuns de funcionários, pagamentos, obras e tarefas devem apresentar tempo de resposta compatível com o uso operacional do sistema.

---

# Regras de Negócio 

## Regras Operacionais

- **RN-01 — Aprovação de orçamento:** Uma obra somente poderá avançar para a formalização do contrato após a aprovação do orçamento pelo cliente.
- **RN-02 — Formalização de contrato:** Antes do início da execução dos serviços, deverá existir um contrato formalizado com o cliente, contendo o escopo da obra, os valores acordados, os prazos e as condições de pagamento.
- **RN-03 — Responsabilidade pela obra:** Toda obra deverá possuir um responsável designado pela empresa, encarregado de acompanhar a execução dos serviços e verificar o cumprimento do planejamento.
- **RN-04 — Planejamento da obra:** A execução deverá seguir um planejamento com etapas, tarefas, prazos e recursos necessários, podendo ser atualizado conforme as necessidades identificadas durante a obra.
- **RN-05 — Alocação de funcionários:** Os funcionários deverão ser alocados às obras de acordo com suas funções, qualificações, disponibilidade e necessidades operacionais.
- **RN-06 — Controle de tarefas:** Toda tarefa deverá estar vinculada a uma obra e possuir um responsável ou encarregado pelo acompanhamento, além de informações sobre prazo e situação de execução.
- **RN-07 — Conclusão de tarefas:** Uma tarefa somente deverá ser considerada concluída após a realização do serviço e a verificação pelo responsável designado, conforme os critérios estabelecidos para a atividade.
- **RN-08 — Aquisição de materiais:** A empresa deverá identificar os materiais necessários para cada etapa da obra e informar ao cliente as quantidades e especificações previstas, considerando a responsabilidade de compra acordada entre as partes.
- **RN-09 — Compras emergenciais:** Quando houver necessidade de aquisição emergencial de materiais pela EJS Construção, a compra deverá ser registrada e acompanhada do respectivo comprovante fiscal, que será encaminhado ao cliente conforme o procedimento acordado.
- **RN-10 — Contratação de terceirizados:** A contratação de empresas terceirizadas deverá considerar a necessidade do serviço, a análise das propostas recebidas, os custos e as condições oferecidas, respeitando a aprovação interna e os termos acordados.
- **RN-11 — Controle de pagamentos:** Os pagamentos a funcionários e empresas terceirizadas deverão ser conferidos com base nos valores devidos, nos registros disponíveis e nas condições acordadas antes de sua realização.
- **RN-12 — Controle de recebimentos:** Os recebimentos dos clientes deverão seguir os valores, vencimentos e condições estabelecidos no contrato, mantendo os registros atualizados para acompanhamento financeiro de cada obra.

## Regras de Controle de Ponto e Remuneração

- **RN-13 — Registro de ponto:** Os horários de entrada e saída dos funcionários deverão ser registrados e associados ao funcionário e à data correspondente, permitindo a apuração da jornada de trabalho.
- **RN-14 — Apuração da jornada:** As horas trabalhadas deverão ser calculadas com base nos registros de ponto, considerando a jornada prevista, os intervalos aplicáveis e as regras trabalhistas pertinentes.
- **RN-15 — Horas extras e faltas:** As horas extras, faltas, atrasos e ausências deverão ser apurados a partir dos registros de jornada e das justificativas aplicáveis, respeitando a legislação trabalhista e os critérios de remuneração adotados pela empresa.
- **RN-16 — Cálculo de valores devidos:** Os valores de remuneração, adicionais e descontos deverão ser calculados conforme os registros disponíveis, as condições contratuais e as regras legais aplicáveis, evitando cobranças ou descontos duplicados.
- **RN-17 — Cadastro de funcionários:** Todo funcionário deverá possuir um cadastro individual com os dados obrigatórios necessários à identificação, à gestão administrativa e ao processamento de sua remuneração.
- **RN-18 — Identificação de funcionários:** Cada funcionário deverá possuir um CPF válido, utilizado para identificação individual e prevenção de cadastros duplicados.

## Regras Financeiras e de Terceirização

- **RN-19 — Identificação de empresas terceirizadas:** Cada empresa terceirizada deverá ser identificada por um CNPJ válido, evitando duplicidade de cadastro.
- **RN-20 — Controle financeiro por obra:** As receitas e despesas relacionadas a cada obra deverão ser registradas de maneira que permitam acompanhar os custos e avaliar a utilização dos recursos financeiros.
- **RN-21 — Padronização de status:** Os status de obras, tarefas e pagamentos deverão seguir opções padronizadas, permitindo acompanhar suas situações de forma consistente.
- **RN-22 — Integridade dos registros:** Os registros financeiros, administrativos e operacionais deverão manter informações consistentes e vinculadas às respectivas obras, funcionários, clientes ou empresas terceirizadas, conforme aplicável.
- **RN-23 — Cálculo do valor líquido:** O valor líquido devido ao funcionário deverá ser calculado considerando o valor bruto, os descontos e os adicionais aplicáveis, sem duplicidade de lançamentos. Quando todos os adicionais já estiverem incluídos no valor bruto, deverá ser aplicada a fórmula: valor líquido = valor bruto − descontos.
- **RN-24 — Comprovantes e responsáveis por pagamentos:** Todo pagamento realizado pela EJS Construção deverá possuir um responsável identificado, registro do valor, data, destinatário e comprovante correspondente. Quando o pagamento ocorrer por meio que não gere comprovante convencional, deverá existir um registro alternativo adequado para demonstrar a operação.
- **RN-25 — Pagamento de empresas terceirizadas:** O pagamento de serviços terceirizados deverá ocorrer após a conferência e aprovação da medição ou da conclusão da etapa contratada, conforme os critérios, prazos e condições definidos no contrato com a empresa prestadora.

## Regras de Aprovação e Execução de Obras

- **RN-26 — Autorização para início da obra:** Nenhuma obra deverá ser iniciada sem a aprovação do orçamento pelo cliente e a formalização do contrato, além das autorizações e condições prévias necessárias à execução do serviço.
- **RN-27 — Responsabilidade técnica da obra:** Cada obra deverá possuir o responsável técnico legalmente habilitado, com registro profissional válido e emissão da Anotação de Responsabilidade Técnica (ART), quando exigível, conforme as normas aplicáveis à atividade.
- **RN-28 — Segurança do trabalho:** A execução das obras deverá cumprir as normas de segurança e saúde no trabalho aplicáveis, incluindo a NR-18 quando pertinente, com adoção das medidas preventivas exigidas e fornecimento, orientação e utilização dos equipamentos de proteção individual (EPIs) adequados aos riscos da atividade.

## Regras de Proteção de Dados e Compras

- **RN-29 — Proteção de dados pessoais:** Os dados pessoais dos funcionários, incluindo CPF e informações salariais, deverão ser acessados somente por pessoas autorizadas e utilizados para finalidades legítimas relacionadas às atividades da empresa, com medidas de segurança e tratamento em conformidade com a Lei Geral de Proteção de Dados Pessoais (LGPD).
- **RN-30 — Aprovação de compras de materiais:** As compras de materiais realizadas pela empresa deverão ser previamente aprovadas pelo responsável autorizado, considerando a necessidade da obra, o orçamento disponível e os valores apresentados. Compras emergenciais deverão ser justificadas, registradas e submetidas à aprovação conforme o procedimento interno estabelecido.

## Regras Complementares de Ponto e Remuneração

- **RN-31 — Registro diário de ponto:** Os horários de entrada e saída deverão ser registrados diariamente para cada funcionário, associados à data e à obra em que o serviço foi realizado. Os intervalos de trabalho também deverão ser registrados quando necessários à apuração da jornada.
- **RN- 32 — Tratamento de atrasos:** Os atrasos deverão ser apurados com base na jornada prevista e nos registros de ponto, observando as tolerâncias estabelecidas pela legislação trabalhista aplicável e por eventuais instrumentos coletivos. A empresa deverá definir e documentar sua política de tratamento de atrasos.
- **RN-33 — Horas devidas:** As horas devidas deverão ser apuradas com base na jornada prevista e nos registros de ponto, considerando as justificativas e as ocorrências registradas. Eventuais descontos deverão respeitar a legislação trabalhista e as regras aplicáveis, sem gerar descontos automáticos indevidos.
- **RN-34 — Pagamento de horas extras:** As horas extras deverão ser calculadas com base na jornada registrada e na jornada contratual, aplicando o adicional mínimo previsto na legislação vigente ou percentual superior estabelecido em instrumento coletivo ou condição mais favorável aplicável.

#### Restrições Organizacionais

A modelagem deverá considerar que a empresa trabalha com funcionários próprios e empresas terceirizadas. Essas duas categorias são representadas separadamente para evitar a mistura de informações de pessoas físicas com informações de pessoas jurídicas.

Os dados financeiros diretamente relacionados a horas adicionais dos funcionários foram separados na entidade **EXTRAS**, enquanto a entidade **PAGAMENTOS** registra as operações de pagamento da empresa.

As informações específicas de uma obra foram distribuídas entre **OBRA**, **GERENCIAMENTO** e **TAREFA_OBRA**, permitindo separar os dados gerais da obra, seus responsáveis e suas atividades.

O modelo atual está limitado às entidades definidas no DER.

---

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
- Cada tarefa deve possuir um `id_tarefa` único.
- Cada ícone deve possuir um `id_icone` único.
- Uma tarefa deve estar relacionada a uma obra existente.
- Um registro de gerenciamento deve estar relacionado a uma obra existente.
- Os valores bruto, descontado e líquido registrados em EXTRAS devem manter consistência entre si.
- Os status de obras, tarefas e pagamentos devem seguir valores padronizados.

---

### Diagrama Entidade-Relacionamento (DER)

O DER atualizado está representado no arquivo abaixo:
https://app.brmodeloweb.com/publicview/6acbaf1a0186ebdccd4c90fb

 <img width="977" height="765" alt="image" src="https://github.com/user-attachments/assets/15a0920f-ead0-433b-a824-bd41e8d93285" />

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
| **Ferramenta e etapa** | ChatGPT — Revisão e ajustes feitos nos arquivos README.me; Reiplementação das novas alterações solicitadas pelo professor no dicionario de dados em html e criação das fotos ilustrativas do fluxo Grama e Diagrama. |
| **Motivação** | Auxiliar na revisão e atualização da documentação, mantendo a consistência entre o novo DER, o dicionário de dados e as regras de negócio do projeto. |
| **Prompt utilizado** | Olá, estou fazendo um projeto da faculdade, o arquuvo readme é esse, a empresa que vou trabalhar é a empresa "Empreiteira EJS", atua na região de são paulo atualmente, já atua a cerca de 6 anos na area, trabalhando com demolição, alvenaria, hidraulica, eletrica, forros de gesso e drywall e limpeza pós obra, na empresa contem engenheiro, mestres de obra, ajudante e pedreiros, além das equipes tercerizadas que presta os serviçõs que foi sitado, preciso de ajuda para me orientar a criar isso Problema, objetivos e delimitação Corrige os erros de portugues e ajuste se não tiver certo vou te enviar na orde da pergunta anterior: Atualmente a empresa segue com um nivel muito baixo de obras em andamento, e não possui redes sociais e nem sites ativos para divulgações, não está conseguindo gerenciar os horarios de entrada e saidas dos fucionarios, o que está encarretando em pagamentos aos funcionarios, por menos horas de trabalho, e a empresa também tem um gravisimo problema que é a questão de pagamentos aos colaboradores tercerizados, e os funcionarios, como os pagamentos são feitos pela mulher do dono da empresa, muitas as vezes não são anotados, para quem pagou x valor, o que está ocasionando em dificuldades na hora de saber se já pagou ou não para os colaboradores. A ideia do grupo é criar um site contendo um sistema de gerenciamento, e divulgações das obras para futuramente o dono da empresa investir em marktig digital, tornando assim o publico da internet, seu publico alvo, para conseguir aumentar o nivel de obras em desenvolvimento, e também queremos adicionar uma parte no sistema para realizar a administração do horario de entrada e saida dos funcionarios, e gerenciar os pagamentos feitos aos colaboradores. Nosso projeto irá realizar ajustes no site já existente para tornalo ativo, e adicionar as etapas para gerenciar os horarios e pagamentos, e iremos desenvolver um banco de dados para salvar todas essas informações, nosso projetos será baseados apenas nisso, uma refatoração do site e criação do banco de dados. |
| **Resposta recebida** | Não consegui obter todas as respostas e prompts recebidos e enviados para a IA, pois o histórico do chat apagou. Também foram consideradas as informações que ainda estavam disponíveis para análise.  |
| **Fontes consultadas e verificadas** |  O conteúdo foi confrontado com o DER e com as regras fornecidas pelo próprio grupo. Também foi verificada a compatibilidade entre as entidades e seus respectivos relacionamentos.  |
| **Trechos rejeitados ou corrigidos** |  Informações do modelo anterior que não faziam mais parte do novo DER foram removidas ou substituídas. Foram priorizadas as informações que correspondiam à versão mais atual do modelo.  |
| **Justificativa da escolha final** |  Foram mantidas apenas as estruturas compatíveis com o modelo atualizado e com as regras definidas para as entidades. A escolha também considerou a organização e a consistência dos relacionamentos entre as entidades.  |
| **Reflexão crítica** |  A IA foi utilizada como ferramenta de apoio. A validação final das regras de negócio, chaves primárias, cardinalidades e nomes dos atributos permanece responsabilidade do grupo. Dessa forma, o uso da IA não substitui a análise e a tomada de decisão dos integrantes.  |

---

## Conclusão

O desenvolvimento deste projeto permitiu ao grupo compreender de forma mais ampla as principais necessidades administrativas e operacionais da Empreiteira EJS, além de aplicar, em uma situação próxima da realidade, os conhecimentos relacionados à análise de requisitos, regras de negócio, modelagem de banco de dados e organização das informações.

Inicialmente, o grupo realizou um levantamento e um mapeamento dos principais problemas encontrados na empresa. Entre eles, foram identificadas dificuldades relacionadas ao controle dos funcionários, registro de horários de entrada e saída, acompanhamento de horas extras e horas devidas, organização dos pagamentos, armazenamento de comprovantes, controle das empresas terceirizadas, gerenciamento das obras e acompanhamento das tarefas realizadas. Também foi identificada a necessidade de melhorar a presença digital da empresa e a divulgação de seus serviços e obras realizadas.

A partir desse levantamento, foram definidas entidades capazes de representar e organizar essas informações de maneira estruturada. A entidade EMPRESA foi estabelecida como elemento central do modelo, relacionando-se diretamente com PAGAMENTOS, FUNCIONARIOS, TERCEIRIZADAS, OBRA e ICONE. Também foram criadas as entidades EXTRAS, vinculada aos funcionários, e GERENCIAMENTO e TAREFA_OBRA, vinculadas às obras. Essa divisão permitiu separar as responsabilidades de cada conjunto de informações e tornar o modelo mais claro, organizado e preparado para sua futura implementação.

O Diagrama Entidade-Relacionamento (DER) desenvolvido pelo grupo representa a estrutura proposta para o sistema e demonstra como as diferentes informações da empresa poderão se relacionar dentro do banco de dados. Com a definição das entidades, atributos, chaves primárias, cardinalidades e regras de negócio, foi criada uma base para que os dados possam futuramente ser cadastrados, consultados, atualizados e administrados de forma mais eficiente e segura.

Além da modelagem do banco de dados, o projeto também possui como objetivo contribuir para a modernização da empresa. A proposta não se limita somente ao armazenamento das informações, mas também prevê o desenvolvimento de um sistema de gerenciamento administrativo, capaz de facilitar o acompanhamento das atividades da empresa e das obras. Paralelamente, está prevista a evolução do site da Empreiteira EJS, para que ele possa ser utilizado como uma ferramenta de apresentação e divulgação dos serviços e trabalhos realizados, fortalecendo a presença digital da empresa e possibilitando futuramente o desenvolvimento de estratégias de marketing para alcançar novos clientes.

Como próximos passos, será necessário transformar a modelagem conceitual desenvolvida neste projeto em uma modelagem lógica e física, definindo as chaves estrangeiras e demais restrições necessárias. Em seguida, as tabelas deverão ser implementadas em um Sistema Gerenciador de Banco de Dados, realizando testes de inserção, consulta, atualização, exclusão e integridade dos registros. Posteriormente, o banco de dados poderá ser integrado ao sistema administrativo e ao site da empresa, permitindo que as informações sejam utilizadas efetivamente nas atividades diárias da organização. Esses passos já estão previstos como evolução natural da estrutura criada pelo grupo.

Outro ponto importante durante o desenvolvimento foi o trabalho em equipe. O projeto foi realizado por um grupo composto por cinco integrantes, que participaram das etapas de levantamento dos problemas, discussão das possíveis soluções, definição das entidades e atributos, elaboração das regras de negócio, desenvolvimento do DER e organização da documentação. O trabalho colaborativo permitiu reunir diferentes ideias e conhecimentos, além de desenvolver competências relacionadas à comunicação, divisão de responsabilidades, resolução de problemas e tomada de decisões em conjunto.

Dessa forma, considera-se que o projeto atingiu seu objetivo nesta etapa ao apresentar uma proposta estruturada para solucionar parte das dificuldades encontradas na Empreiteira EJS. A modelagem desenvolvida estabelece uma base sólida para a construção de um sistema mais completo, permitindo que informações que atualmente podem estar dispersas sejam futuramente centralizadas e administradas de maneira organizada.

Por fim, o projeto demonstra como a tecnologia, a modelagem de banco de dados e o desenvolvimento de sistemas podem ser utilizados para apoiar a organização e a evolução de uma empresa real. A continuidade do trabalho, com a implementação do banco de dados, desenvolvimento do sistema administrativo e aprimoramento do site, poderá transformar o modelo desenvolvido pelo grupo em uma solução funcional, contribuindo para melhorar os processos internos da empresa, facilitar a tomada de decisões e ampliar a divulgação de seus serviços.

---

## Referências Bibliográficas

As referências bibliográficas utilizadas pelo grupo deverão ser adicionadas nesta seção conforme as fontes efetivamente consultadas durante o desenvolvimento do trabalho.

---

