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

O sistema tem como objetivo organizar e gerenciar informações relacionadas a funcionários, obras, pagamentos, tarefas e ícones utilizados na interface do sistema.

O modelo de dados apresenta cinco entidades principais:

* **FUNCIONARIO**
* **FINANCEIRO**
* **OBRA**
* **TAREFA_OBRA**
* **ICONE**

Cada entidade possui atributos responsáveis por armazenar as informações necessárias para o funcionamento do sistema.

---

## 2. Entidades e atributos

### 2.1 FUNCIONARIO

A entidade **FUNCIONARIO** armazena os dados dos funcionários relacionados à empresa.

O **CPF** é utilizado como chave primária, sendo o identificador único de cada funcionário.

| Atributo                    | Descrição                                                                  | Tipo sugerido            |
| --------------------------- | -------------------------------------------------------------------------- | ------------------------ |
| `cpf`                       | CPF do funcionário e identificador único do funcionário.                   | CHAR(11), chave primária |
| `nome_funcionario`          | Nome completo do funcionário.                                              | VARCHAR(150)             |
| `cargo`                     | Cargo ou função exercida pelo funcionário.                                 | VARCHAR(100)             |
| `salario_definido`          | Salário definido para o funcionário.                                       | DECIMAL(10,2)            |
| `data_recebimento_salario`  | Data prevista ou registrada para o recebimento do salário.                 | DATE                     |
| `nome_empresa_terceirizada` | Nome da empresa terceirizada relacionada ao funcionário, quando aplicável. | VARCHAR(150)             |
| `cnpj_empresa`              | CNPJ da empresa terceirizada, quando aplicável.                            | CHAR(14)                 |
| `beneficios_funcionarios`   | Benefícios associados ao funcionário.                                      | TEXT                     |

**Regra de negócio:** cada funcionário deve possuir um CPF único, não sendo permitido o cadastro de dois funcionários com o mesmo CPF.

---

### 2.2 FINANCEIRO

A entidade **FINANCEIRO** registra as operações relacionadas aos pagamentos e valores financeiros dos funcionários.

O **id_operacao** é utilizado como chave primária para identificar cada operação financeira de forma única.

| Atributo                 | Descrição                                                                | Tipo sugerido       |
| ------------------------ | ------------------------------------------------------------------------ | ------------------- |
| `id_operacao`            | Identificador único da operação financeira.                              | INT, chave primária |
| `valor_pago`             | Valor efetivamente pago.                                                 | DECIMAL(10,2)       |
| `data_pagamento`         | Data em que o pagamento foi realizado.                                   | DATE                |
| `comprovante_pagamento`  | Referência ou caminho do comprovante de pagamento.                       | VARCHAR(255)        |
| `forma_pagamento`        | Forma utilizada para realizar o pagamento.                               | VARCHAR(50)         |
| `valor_bruto`            | Valor total antes dos descontos.                                         | DECIMAL(10,2)       |
| `valor_descontado`       | Valor total dos descontos aplicados.                                     | DECIMAL(10,2)       |
| `valor_liquido`          | Valor final após a aplicação dos descontos.                              | DECIMAL(10,2)       |
| `status_pagamento`       | Situação atual do pagamento.                                             | VARCHAR(30)         |
| `horas_extras`           | Quantidade de horas extras registradas.                                  | DECIMAL(5,2)        |
| `horas_funcionario_deve` | Quantidade de horas que o funcionário deve, conforme definido no modelo. | DECIMAL(5,2)        |

**Regra de negócio:** cada operação financeira deve possuir um `id_operacao` único.

---

### 2.3 OBRA

A entidade **OBRA** armazena as principais informações relacionadas às obras administradas pela empresa.

De acordo com a regra definida para o modelo, a obra é identificada pelo seu **nome**.

| Atributo          | Descrição                                                 | Tipo sugerido                |
| ----------------- | --------------------------------------------------------- | ---------------------------- |
| `nome`            | Nome ou identificação única da obra.                      | VARCHAR(150), chave primária |
| `endereco`        | Endereço onde a obra está localizada.                     | VARCHAR(255)                 |
| `tempo_inicio`    | Data ou horário de início da obra.                        | DATETIME                     |
| `tempo_fim`       | Data ou horário de término previsto ou realizado da obra. | DATETIME                     |
| `status`          | Situação atual da obra.                                   | VARCHAR(30)                  |
| `descricao`       | Descrição geral da obra.                                  | TEXT                         |
| `horario_entrada` | Horário de entrada registrado para a obra.                | TIME                         |
| `horario_saida`   | Horário de saída registrado para a obra.                  | TIME                         |

**Regra de negócio:** cada obra deve possuir um nome único, utilizado para sua identificação no sistema.

---

### 2.4 TAREFA_OBRA

A entidade **TAREFA_OBRA** armazena as tarefas relacionadas às obras.

De acordo com a regra definida no modelo, a tarefa é identificada pelo atributo **`nome_tarefa`**.

| Atributo           | Descrição                                              | Tipo sugerido                |
| ------------------ | ------------------------------------------------------ | ---------------------------- |
| `nome_tarefa`      | Nome e identificador da tarefa.                        | VARCHAR(150), chave primária |
| `data_execucao`    | Data prevista ou registrada para a execução da tarefa. | DATE                         |
| `descricao_tarefa` | Descrição da tarefa a ser realizada.                   | TEXT                         |
| `status_tarefa`    | Situação atual da tarefa.                              | VARCHAR(30)                  |

**Regra de negócio:** cada tarefa deve possuir um `nome_tarefa` que permita sua identificação no sistema.

---

### 2.5 ICONE

A entidade **ICONE** define os ícones utilizados para representar informações ou tarefas na interface do sistema.

O ícone pode ser localizado pelo seu **ID (`id_icone`)** ou pelo seu nome.

| Atributo       | Descrição                                 | Tipo sugerido       |
| -------------- | ----------------------------------------- | ------------------- |
| `id_icone`     | Identificador único do ícone.             | INT, chave primária |
| `nome`         | Nome ou identificação do ícone.           | VARCHAR(100)        |
| `descricao`    | Descrição da finalidade do ícone.         | TEXT                |
| `imagem_icone` | Referência ou caminho da imagem do ícone. | VARCHAR(255)        |

**Regra de negócio:** cada ícone deve possuir um `id_icone` único. O atributo `nome` pode ser utilizado para facilitar sua localização e identificação.

---

### Modelagem Conceitual (Entidades, Atributos, Relacionamentos)

## Entidades reconhecidas

* **FUNCIONARIO:** representa os funcionários cadastrados no sistema.
* **OBRA:** representa as obras administradas pela empresa.
* **TAREFA_OBRA:** representa as tarefas realizadas nas obras.
* **FINANCEIRO:** representa as operações financeiras relacionadas aos funcionários.
* **ICONE:** representa os ícones utilizados para identificação visual das tarefas no sistema.

## Atributos e classificações

* **FUNCIONARIO:** `cpf`, `nome_funcionario`, `cargo`, `salario_definido`, `data_recebimento_salario`, `nome_empresa_terceirizada`, `cnpj_empresa`, `beneficios_funcionarios`.
* **OBRA:** `nome`, `endereco`, `tempo_inicio`, `tempo_fim`, `status`, `descricao`, `horario_entrada`, `horario_saida`.
* **TAREFA_OBRA:** `nome_tarefa`, `data_execucao`, `descricao_tarefa`, `status_tarefa`.
* **FINANCEIRO:** `id_operacao`, `valor_pago`, `data_pagamento`, `comprovante_pagamento`, `forma_pagamento`, `valor_bruto`, `valor_descontado`, `valor_liquido`, `status_pagamento`, `horas_extras`, `horas_funcionario_deve`.
* **ICONE:** `id_icone`, `nome`, `descricao`, `imagem_icone`.

As chaves primárias são: `cpf` em **FUNCIONARIO**, `nome` em **OBRA**, `nome_tarefa` em **TAREFA_OBRA**, `id_operacao` em **FINANCEIRO** e `id_icone` em **ICONE**.

## Relacionamentos pertinentes

* **FUNCIONARIO — ADMINISTRA — OBRA:** relaciona funcionários às obras que administram.
* **FUNCIONARIO — ALOCA — OBRA:** relaciona funcionários às obras em que estão alocados.
* **FUNCIONARIO — RECEBE — FINANCEIRO:** relaciona funcionários às suas operações financeiras.
* **OBRA — POSSUI — TAREFA_OBRA:** relaciona as obras às suas respectivas tarefas.
* **TAREFA_OBRA — REPRESENTA — ICONE:** relaciona as tarefas aos ícones utilizados para representá-las.

## Restrições e políticas organizacionais

* O CPF do funcionário deve ser único.
* O nome da obra deve identificar uma única obra.
* O `nome_tarefa` deve identificar uma única tarefa.
* Cada operação financeira deve possuir um `id_operacao` único.
* Cada ícone deve possuir um `id_icone` único.
* As tarefas devem estar relacionadas às respectivas obras.
* As operações financeiras devem estar relacionadas aos funcionários correspondentes.
* Os valores financeiros devem manter a consistência entre valor bruto, descontos e valor líquido.
* Os status de obras, tarefas e pagamentos devem seguir valores padronizados.

---

### Diagrama Entidade-Relacionamento (DER)

<img width="1672" height="941" alt="image" src="https://github.com/user-attachments/assets/7a035247-1f93-435d-a587-80d44f638362" />

---

### Justificativa Técnica

A modelagem conceitual foi definida a partir das principais regras de negócio identificadas no contexto da empresa, buscando representar as informações de forma estruturada, evitar redundâncias e possibilitar a evolução do sistema nas próximas etapas.

A entidade **FUNCIONARIO** foi criada para representar os profissionais envolvidos nas atividades da empresa. O **CPF** foi definido como chave primária por permitir a identificação individual de cada funcionário. A escolha de manter os dados profissionais, salariais e de contratação nessa entidade evita que essas informações sejam repetidas em diferentes partes do modelo.

A entidade **OBRA** representa cada obra administrada pela empresa. O atributo **nome** foi adotado como chave primária conforme a regra de identificação definida para o projeto. Informações como endereço, período, status, descrição e horários foram mantidas nessa entidade por serem características próprias da obra. Uma alternativa seria criar entidades separadas para endereço, horários ou status, porém essa decomposição não se mostrou necessária no nível conceitual atual, pois não existem regras de negócio que indiquem a necessidade de tratá-los como objetos independentes.

A entidade **TAREFA_OBRA** foi separada de OBRA porque uma obra é composta por diversas atividades que precisam ser acompanhadas individualmente. O **nome_tarefa** foi definido como chave primária conforme a regra estabelecida. A separação evita armazenar várias tarefas como atributos de uma única obra e permite registrar individualmente a data, descrição e status de cada atividade.

A entidade **FINANCEIRO** foi criada separadamente de FUNCIONARIO porque um funcionário pode possuir diversas operações financeiras durante seu vínculo com a empresa. O **id_operacao** foi definido como chave primária para identificar cada operação individualmente. Essa decisão é mais adequada do que armazenar os valores diretamente em FUNCIONARIO, pois permite representar múltiplos pagamentos e registros financeiros sem duplicar os dados do funcionário.

A entidade **ICONE** foi incluída para centralizar os recursos utilizados na representação visual das tarefas. O **id_icone** foi definido como chave primária, enquanto o **nome** possibilita sua identificação por meio de uma informação descritiva. A criação dessa entidade evita a repetição dos dados do mesmo ícone em diferentes tarefas e permite seu reaproveitamento.

Quanto aos relacionamentos, **FUNCIONARIO — ADMINISTRA — OBRA** possui cardinalidade **N:N**, pois um funcionário pode participar da administração de várias obras e uma obra pode ser administrada por mais de um funcionário. Uma cardinalidade 1:N não representaria adequadamente essa possibilidade.

O relacionamento **FUNCIONARIO — ALOCA — OBRA** também possui cardinalidade **N:N**, porém representa a alocação para execução das atividades. A distinção entre ADMINISTRA e ALOCA é necessária porque são responsabilidades diferentes: um funcionário pode administrar uma obra sem necessariamente estar alocado para sua execução, e diferentes funcionários podem exercer diferentes funções dentro da mesma obra.

O relacionamento **FUNCIONARIO — RECEBE — FINANCEIRO** possui cardinalidade **1:N**, pois um funcionário pode possuir várias operações financeiras, enquanto cada operação financeira está vinculada a um único funcionário. Não foi utilizada uma relação N:N porque uma mesma operação financeira não representa, no modelo atual, um pagamento pertencente simultaneamente a vários funcionários.

O relacionamento **OBRA — POSSUI — TAREFA_OBRA** possui cardinalidade **1:N**, pois uma obra pode possuir várias tarefas, mas cada tarefa pertence a uma obra específica. Essa estrutura permite organizar as atividades dentro do contexto da obra sem transformar as tarefas em atributos repetitivos de OBRA.

O relacionamento **TAREFA_OBRA — REPRESENTA — ICONE** possui cardinalidade **N:1**, pois várias tarefas podem utilizar o mesmo ícone, enquanto cada tarefa utiliza um ícone para sua representação. A criação do relacionamento, em vez da duplicação das informações do ícone em cada tarefa, permite reutilização e facilita futuras alterações.

As restrições de integridade também foram consideradas. As chaves primárias devem identificar unicamente cada ocorrência, enquanto os relacionamentos devem garantir que uma tarefa esteja vinculada a uma obra existente e que uma operação financeira esteja vinculada a um funcionário existente. Os atributos relacionados a valores financeiros também devem manter consistência entre valor bruto, descontos e valor líquido.

A opção por manter determinadas informações como atributos, em vez de transformá-las em entidades independentes, foi baseada no princípio de **abstração adequado ao escopo do sistema**. Uma entidade deve representar um objeto relevante do domínio que possua identidade e participação própria nas regras de negócio. Dessa forma, atributos simples e que não possuem comportamento ou relacionamentos independentes permanecem associados às suas respectivas entidades.

Por fim, o modelo foi estruturado considerando **escalabilidade e integração**. A separação entre funcionários, obras, tarefas, operações financeiras e ícones permite que novas entidades, como clientes, fornecedores, materiais, equipamentos e contratos, sejam incorporadas posteriormente sem comprometer a estrutura principal.

Assim, as decisões adotadas não representam apenas uma divisão dos dados, mas uma tentativa de reproduzir as regras de negócio de forma coerente. As entidades foram definidas conforme os objetos relevantes do domínio, os atributos conforme suas características, os relacionamentos conforme suas dependências e as cardinalidades conforme a quantidade de ocorrências permitida entre as entidades.


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

