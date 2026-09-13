# Modelagem de Banco de Dados Para Empreiteira EJS


## Introdução

Atualmente, a empresa apresenta um baixo número de obras em andamento e não possui redes sociais ou um site ativo para divulgação de seus serviços e obras realizadas. Além disso, a empresa enfrenta dificuldades no gerenciamento dos horários de entrada e saída dos funcionários, o que pode ocasionar divergências no controle das horas trabalhadas e, consequentemente, nos pagamentos realizados aos colaboradores.

Outro problema identificado está relacionado ao controle dos pagamentos realizados aos funcionários e aos colaboradores terceirizados. Como os pagamentos são realizados pela responsável financeira da empresa e, em algumas situações, não são devidamente registrados, torna-se difícil verificar posteriormente quais colaboradores já receberam seus pagamentos, os respectivos valores e quais pagamentos ainda estão pendentes. Essa falta de controle pode ocasionar dificuldades na organização financeira e administrativa da empresa.

O objetivo do grupo é realizar a atualização e implementação de um site para a empresa, tornando-o ativo e utilizando-o como ferramenta de divulgação de seus serviços e obras realizadas. Dessa forma, busca-se criar uma presença digital para a empresa e, futuramente, possibilitar investimentos em marketing digital, ampliando seu alcance ao público da internet e contribuindo para a captação de novos clientes e obras.

Além da divulgação, o projeto terá como objetivo implementar funcionalidades de gerenciamento dos horários de entrada e saída dos funcionários, permitindo um melhor controle das horas trabalhadas. Também será desenvolvida uma funcionalidade para o registro e gerenciamento dos pagamentos realizados aos funcionários e colaboradores terceirizados, permitindo consultar os valores pagos e identificar possíveis pagamentos pendentes.

O projeto será delimitado à refatoração e atualização do site já existente da empresa, tornando-o funcional e adequado para a divulgação de seus serviços e obras. Também serão desenvolvidas funcionalidades específicas para o gerenciamento dos horários de entrada e saída dos funcionários e para o registro e controle dos pagamentos realizados aos funcionários e colaboradores terceirizados.

Para o armazenamento e gerenciamento dessas informações, será desenvolvido um banco de dados responsável por registrar os dados relacionados aos funcionários, horários, pagamentos e demais informações necessárias para o funcionamento das funcionalidades propostas.

Dessa forma, o projeto estará concentrado na refatoração do site existente, na implementação das funcionalidades de gerenciamento e no desenvolvimento do banco de dados, não abrangendo, nesta etapa, outros sistemas ou funcionalidades que não estejam diretamente relacionados aos objetivos definidos.

## Desenvolvimento

Começamos o projeto fazendo uma pequena analise de problemas e achando soluções para os problemas que a empresa tinha, diante da analise fizemos um desenho basico de como poderia montar a extrutura e como salvar os dados, e depois disso criamos o dicionario de dados baseados nesse rascunho, depois disso fomos ajustando o reade-me, no reade-me descrevemos todos os passos do projeto.

### Caracterização da Organização

- **Nome e natureza da organização:** *ERENILDO JOSE DA SILVA CONTRUCAO - ME / Prestação de serviços na construção civil, com foco em aplicação de revestimentos, resinas e reformas em geral. *
  
- **Contexto e porte:** Empresa com fins lucrativos atuando no setor de construção civil e empreitadas. A operação é de médio porte, contando com um volume constante de até 3 obras simultâneas. A equipe envolve cerca de 18 colaboradores no total, sendo composta por 1 engenheirs civil (responsável pela administração e criaão de orçamentos) e 17 operários de campo, divididos entre mestres obras, pedreiros e serventes. O volume mensal de atividades inclui a gestão de dezenas de tarefas por obra e o processamento de folha de pagamento e custos operacionais recorrentes.
  
- **Problemas e necessidades identificados:** A empresa enfrenta dificuldades no controle de assiduidade e pontualidade dos colaboradores, visto que atrasos frequentes ocorrem nos canteiros de obras sem o devido registro ou compensação de horas devidas. Além disso, a organização sofre com a falta de presença digital e divulgação de seus serviços, pois a ausência de redes sociais e de um catálogo estruturado de fotos das obras concluídas impede a captação de novos clientes e o reconhecimento do seu portfólio no mercado.
  
- **Justificativa da escolha:** A escolha desta organização baseou-se no fato de ela apresentar problemas operacionais e de comunicação altamente típicos em pequenas e médias empresas do setor de construção civil. O grupo identificou que o porte da empreiteira oferece um cenário ideal e uma oportunidade favorável para a aplicação prática dos conceitos de modelagem de banco de dados, permitindo desenhar uma solução escalável que resolve gargalos reais de gestão de pessoal e de catalogação de portfólio.
 
- **Evidências da organização:** *Site: https://empreiteira-ejs.vercel.app/index.html / Telefone: 11 98606-9654 / Instagram: https://www.instagram.com/ejs.empreiteira?igsh=MTdxcGNqZXpuNzcydQ%3D%3D&utm_source=qr*

---

### Processos de Negócio

- **Principais processos mapeados:** *Cadastrar obras e funcionários, gerenciar frequência dos funcionários, gerenciar pagamentos realizados e gerenciar tarefas das obras.*
- **Fluxogramas:** *represente visualmente pelo menos os processos-chave (imagens anexadas). Deve ficar claro o fluxo de cada processo e como eles se integram entre si.*

---

### Requisitos do Sistema

#### Requisitos Funcionais

* **RF-01:** O sistema deve permitir o cadastro de funcionários, armazenando dados como nome, cargo, CPF e salário.
* **RF-02:** O sistema deve permitir o cadastro de obras, registrando o endereço, descrição, horários de entrada/saída e tempos estimados.
* **RF-03:** O sistema deve registrar a alocação de funcionários em obras específicas para controlar a frequência e as horas devidas/extras.
* **RF-04:** O sistema deve registrar e gerenciar os pagamentos efetuados aos funcionários (valores brutos, descontados, líquidos e formas de pagamento).
* **RF-05:** O sistema deve permitir a criação e o gerenciamento de tarefas vinculadas a cada obra, acompanhando a data de execução, descrição e status.
* **RF-06:** O sistema deve permitir a associação de ícones personalizados para categorizar visualmente os tipos de serviço prestado.*

#### Requisitos Não Funcionais

* **RNF-01 (Segurança):** O sistema deve garantir controle de acesso por nível de usuário, permitindo que apenas o setor administrativo e financeiro visualizem e alterem os registros da tabela FINANCEIRO.
* **RNF-02 (Usabilidade/Portabilidade):** A interface do sistema deve ser responsiva e otimizada para dispositivos móveis (smartphones e tablets), facilitando o uso por mestres de obras e engenheiros diretamente no canteiro de obras.
* **RNF-03 (Disponibilidade):** O sistema deve ser baseado em nuvem e possuir uma taxa de disponibilidade de no mínimo 99,5% (Uptime), garantindo acesso contínuo aos dados da obra.
* **RNF-04 (Desempenho):** O tempo de resposta para a consulta de alocação de funcionários e status de tarefas não deve ultrapassar 3 segundos sob condições normais de conexão com a internet.


---

### Regras de Negócio
*(esta seção DIVIDE com a Seção 3 "Requisitos do Sistema" os mesmos 7,5% da dimensão conceitual — juntas valem 7,5%, não 7,5% cada — + 4% exclusivos desta seção na documentação. "Regras de negócio" é o termo técnico usado em modelagem de dados para as regras de funcionamento de qualquer organização, com ou sem fins lucrativos)*

- **Regras operacionais:** *A modelagem do sistema de gestão de informações da Empreiteira EJS deverá considerar as regras operacionais relacionadas ao gerenciamento das obras e à execução dos serviços.

Cada obra deverá estar vinculada a um cliente, permitindo identificar o contratante e organizar as informações relacionadas aos serviços solicitados.

Uma obra poderá contemplar diferentes tipos de serviços, como demolição, alvenaria, hidráulica, elétrica, forros de gesso, drywall e limpeza pós-obra, de acordo com as necessidades identificadas.

Os serviços deverão estar relacionados aos profissionais ou às equipes responsáveis por sua execução, considerando a participação tanto dos colaboradores internos quanto das equipes terceirizadas.

O acompanhamento das obras deverá permitir a organização das informações referentes aos serviços executados e ao andamento das atividades.

Essas regras são importantes para estabelecer os relacionamentos entre as entidades do banco de dados, garantindo que as informações sobre clientes, obras, serviços e equipes sejam organizadas de maneira consistente.
*
- **Restrições organizacionais:** *A modelagem do sistema de gestão de informações da Empreiteira EJS deverá considerar as características e limitações da organização, especialmente em relação à execução das obras e à participação dos profissionais envolvidos.

Uma das principais restrições está relacionada à existência de equipes internas e terceirizadas, que participam da execução dos serviços. Dessa forma, o modelo deverá permitir a identificação dos profissionais e das equipes responsáveis pelas atividades, diferenciando os serviços executados por equipes próprias daqueles realizados por terceiros.

Outra restrição está relacionada à diversidade de serviços oferecidos pela empresa, como demolição, alvenaria, hidráulica, elétrica, forros de gesso, drywall e limpeza pós-obra. O modelo deverá permitir o registro de diferentes serviços vinculados a uma mesma obra, considerando suas particularidades.

Além disso, o projeto será limitado à gestão das informações relacionadas aos clientes, obras, serviços e equipes envolvidas, não abrangendo todos os processos administrativos da organização.

Essas restrições são importantes para garantir que a modelagem represente adequadamente a realidade da empresa, evitando informações desnecessárias e permitindo uma estrutura organizada e adequada às necessidades identificadas.
*

---

# Dicionário de Dados — Sistema de Gestão de Obras

## 1. Visão geral

O sistema tem como objetivo organizar informações de funcionários, obras, pagamentos, tarefas e ícones utilizados na interface.

O modelo apresenta cinco entidades: **FUNCIONARIO**, **FINANCEIRO**, **OBRA**, **TAREFA_OBRA** e **ICONE**.

## 2. Entidades e atributos

### 2.1 FUNCIONARIO

Armazena os dados dos funcionários.

| Atributo                    | Descrição                                                | Tipo sugerido       |
| --------------------------- | -------------------------------------------------------- | ------------------- |
| `id_funcionario`            | Identificador único do funcionário.                      | INT, chave primária |
| `nome_funcionario`          | Nome completo do funcionário.                            | VARCHAR(150)        |
| `cpf`                       | CPF do funcionário.                                      | CHAR(11)            |
| `cargo`                     | Cargo ou função exercida.                                | VARCHAR(100)        |
| `salario_definido`          | Salário definido para o funcionário.                     | DECIMAL(10,2)       |
| `data_recebimento_salario`  | Data prevista ou registrada para recebimento do salário. | DATE                |
| `nome_empresa_terceirizada` | Nome da empresa terceirizada relacionada ao funcionário. | VARCHAR(150)        |
| `cnpj_empresa`              | CNPJ da empresa terceirizada.                            | CHAR(14)            |
| `beneficios_funcionarios`   | Benefícios associados ao funcionário.                    | TEXT                |

### 2.2 FINANCEIRO

Registra informações de pagamentos e valores relacionados aos funcionários.

| Atributo                 | Descrição                                                        | Tipo sugerido       |
| ------------------------ | ---------------------------------------------------------------- | ------------------- |
| `id_operacao`            | Identificador único da operação financeira.                      | INT, chave primária |
| `valor_pago`             | Valor efetivamente pago.                                         | DECIMAL(10,2)       |
| `data_pagamento`         | Data em que o pagamento foi realizado.                           | DATE                |
| `comprovante_pagamento`  | Referência ou caminho do comprovante de pagamento.               | VARCHAR(255)        |
| `forma_pagamento`        | Forma utilizada para realizar o pagamento.                       | VARCHAR(50)         |
| `valor_bruto`            | Valor total antes de descontos.                                  | DECIMAL(10,2)       |
| `valor_descontado`       | Valor total dos descontos aplicados.                             | DECIMAL(10,2)       |
| `valor_liquido`          | Valor final após os descontos.                                   | DECIMAL(10,2)       |
| `status_pagamento`       | Situação do pagamento.                                           | VARCHAR(30)         |
| `horas_extras`           | Quantidade de horas extras registradas.                          | DECIMAL(5,2)        |
| `horas_funcionario_deve` | Quantidade de horas que o funcionário deve, conforme o diagrama. | DECIMAL(5,2)        |

### 2.3 OBRA

Armazena as informações principais de cada obra.

| Atributo          | Descrição                                         | Tipo sugerido       |
| ----------------- | ------------------------------------------------- | ------------------- |
| `id_obra`         | Identificador único da obra.                      | INT, chave primária |
| `nome`            | Nome ou identificação da obra.                    | VARCHAR(150)        |
| `endereco`        | Endereço onde a obra está localizada.             | VARCHAR(255)        |
| `tempo_inicio`    | Data ou horário de início da obra.                | DATETIME            |
| `tempo_fim`       | Data ou horário de término previsto ou realizado. | DATETIME            |
| `status`          | Situação atual da obra.                           | VARCHAR(30)         |
| `descricao`       | Descrição geral da obra.                          | TEXT                |
| `horario_entrada` | Horário de entrada registrado para a obra.        | TIME                |
| `horario_saida`   | Horário de saída registrado para a obra.          | TIME                |

### 2.4 TAREFA_OBRA

Armazena as tarefas vinculadas às obras.

| Atributo           | Descrição                                  | Tipo sugerido       |
| ------------------ | ------------------------------------------ | ------------------- |
| `id_tarefa`        | Identificador único da tarefa.             | INT, chave primária |
| `nome_tarefa`      | Nome da tarefa.                            | VARCHAR(150)        |
| `data_execucao`    | Data prevista ou registrada para execução. | DATE                |
| `descricao_tarefa` | Descrição da tarefa.                       | TEXT                |
| `status_tarefa`    | Situação atual da tarefa.                  | VARCHAR(30)         |

### 2.5 ICONE

Define os ícones utilizados no sistema.

| Atributo       | Descrição                                 | Tipo sugerido       |
| -------------- | ----------------------------------------- | ------------------- |
| `id_icone`     | Identificador único do ícone.             | INT, chave primária |
| `nome`         | Nome ou identificação do ícone.           | VARCHAR(100)        |
| `descricao`    | Descrição da finalidade do ícone.         | TEXT                |
| `imagem_icone` | Referência ou caminho da imagem do ícone. | VARCHAR(255)        |

## 3. Relacionamentos

* **FUNCIONARIO — ADMINISTRA — OBRA:** relaciona funcionários às obras que administram.
* **FUNCIONARIO — ALOCA — OBRA:** relaciona funcionários às obras em que estão alocados.
* **FUNCIONARIO — RECEBE — FINANCEIRO:** relaciona funcionários aos registros financeiros de pagamentos.
* **OBRA — POSSUI — TAREFA_OBRA:** relaciona cada obra às suas tarefas.
* **TAREFA_OBRA — REPRESENTA — ICONE:** relaciona tarefas aos ícones usados para representá-las.

## 4. Observações sobre o diagrama

O diagrama apresenta alguns pontos que precisam ser confirmados antes da implementação:

1. O atributo `horas_funcionario_deve` aparece parcialmente no diagrama. Foi mantido com essa identificação, mas é importante confirmar o nome completo e o significado.
2. As cardinalidades de **RECEBE** parecem indicar uma relação de muitos para muitos. Se cada pagamento pertence a apenas um funcionário, o modelo deve ser ajustado para refletir essa regra.
3. A relação **REPRESENTA** indica que uma tarefa pode estar associada a vários ícones, enquanto cada ícone está associado a uma tarefa. Confirme se essa é a regra desejada.
4. O diagrama não mostra explicitamente os atributos de chave estrangeira. Na implementação, será necessário definir como os relacionamentos serão armazenados no banco de dados.


---

### Modelagem Conceitual (Entidades, Atributos, Relacionamentos)
*(vale 7,5% na dimensão conceitual)*

- **Entidades reconhecidas:** *liste e justifique brevemente cada uma.*
- **Atributos e classificações:** *quais atributos pertencem a cada entidade.*
- **Relacionamentos pertinentes:** *como as entidades se conectam.*
- **Restrições e políticas organizacionais aplicadas ao modelo.**

---

### Diagrama Entidade-Relacionamento (DER)
*(vale 20% — é o item de maior peso da entrega)*

- Anexe o DER (em imagem).
- O diagrama deve representar corretamente:
  - Entidades
  - Atributos
  - Relacionamentos
  - **Cardinalidades**
- O modelo deve ser **consistente** e já demonstrar potencial de **escalabilidade e integração** (pensando nas próximas etapas do projeto).

---

### Justificativa Técnica
*(vale 7,5% — sozinho, é o subcritério de maior peso dentro da Dimensão Conceitual)*

*Explique e defenda as decisões de abstração e modelagem tomadas: por que essas entidades, esses atributos, esses relacionamentos e essas cardinalidades — e não outras alternativas possíveis?*

---

### Uso de Inteligência Artificial
*(documentação obrigatória — não é opcional se o grupo usou IA em qualquer etapa: pesquisa, escrita, organização de ideias ou revisão de texto)*

Se o grupo usou alguma ferramenta de IA (ChatGPT, Claude, Gemini, Perplexity etc.) em qualquer parte do trabalho, registre **para cada uso relevante**:

| Item | O que registrar |
|------|------------------|
| **Ferramenta e etapa** | Qual IA foi usada e em qual parte do trabalho (ex.: pesquisa sobre o setor da organização, redação do README, organização dos requisitos, revisão ortográfica/gramatical). |
| **Motivação** | Por que o grupo recorreu à IA nesse ponto específico. |
| **Prompt(s) utilizados** | Texto exato (ou muito próximo) do que foi perguntado/pedido à IA. |
| **Resposta recebida** | Resumo ou trecho relevante da resposta da IA. |
| **Fontes consultadas e verificadas** | Se a IA citou fontes/dados, quais foram checadas pelo grupo e como (ex.: comparação com o que foi observado na visita de campo). |
| **Trechos rejeitados ou corrigidos** | O que da resposta da IA foi descartado, editado ou corrigido manualmente, e por quê. |
| **Justificativa da escolha final** | Por que o grupo manteve, adaptou ou rejeitou o que a IA sugeriu. |
| **Reflexão crítica** | Limites, vieses ou erros identificados no uso da IA nessa etapa (ex.: informação desatualizada, alucinação, generalização incorreta sobre o tipo de organização). |

*Se o grupo não usou nenhuma ferramenta de IA, declare isso explicitamente nesta seção.*

## Conclusão
Síntese, contribuições, aprendizados, trabalhos futuros

## Referências Bibliográficas

---

## Critérios Atitudinais (20%)
**Estes critérios NÃO constam explicitamente como item de entrega no README.** Eles são avaliados por meio de **Avaliação 360º entre os integrantes do grupo** (cada membro avalia os colegas de equipe), e não pela leitura do repositório ou pela apresentação:

- **Participação (5%):** envolvimento nas discussões técnicas e nas decisões do grupo.
- **Comprometimento (5%):** cumprimento de prazos e responsabilidades assumidas.
- **Colaboração (5%):** respeito às contribuições dos colegas e cooperação na construção do projeto.
- **Autonomia (5%):** busca independente de soluções e proposta de melhorias.

---

## Resumo dos Pesos

| Dimensão | Peso total |
|----------|-----------|
| Conceitual (contexto, requisitos/regras, modelagem, justificativa técnica) | 30% |
| Procedimental (requisitos, fluxogramas, dicionário de dados, DER) | 50% |
| Atitudinal (participação, comprometimento, colaboração, autonomia) | 20% |

**Entrega final:** README.md completo + DER anexado no repositório GitHub do grupo.

