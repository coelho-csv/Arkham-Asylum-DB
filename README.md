# Projeto de Banco de Dados - Arkham Asylum
Bem-vindo ao Projeto de Banco de Dados Arkham Asylum! Este projeto simula a estrutura de um banco de dados que modela a famosa instituição psiquiátrica do universo Batman, focando na gestão de pacientes altamente perigosos e na equipe especializada que cuida deles. O banco de dados é projetado para rastrear as admissões dos pacientes, suas condições psiquiátricas e os tratamentos administrados por uma equipe especializada.

## Introdução
Este projeto foi inspirado no Arkham Asylum, uma das instituições mais icônicas da cultura pop. Aqui, pacientes com distúrbios graves, incluindo assassinos em série e psicopatas, são internados para tratamento. A ideia do banco de dados é capturar de forma eficiente os dados relacionados aos pacientes, os tratamentos recebidos e a equipe médica responsável, com foco em tratamentos psiquiátricos intensivos.

## Estrutura do Banco de Dados
O banco de dados consiste em quatro principais tabelas:

* Patients (Pacientes): Armazena informações sobre os pacientes, como nome, data de internação, problema psiquiátrico e status (internado ou liberado).
* Staff (Funcionários): Armazena os dados dos funcionários gerais do asilo, como nome, cargo e data de contratação.
* Specialized Staff (Equipe Especializada): Extensão da tabela Staff, contendo informações adicionais para médicos e especialistas, como a área de especialização.
* Treatments (Tratamentos): Registra os tratamentos administrados a cada paciente, incluindo o médico responsável e o tipo de tratamento.

### Modelo Conceitual
Aqui está uma breve visão dos relacionamentos entre as tabelas:

* Cada paciente pode receber múltiplos tratamentos.
* Cada tratamento é administrado por um membro da equipe ou especialista.
* Especialistas herdam as informações gerais dos funcionários.

### Tecnologias Utilizadas
Este projeto utiliza as seguintes tecnologias:

* PostgreSQL: Sistema de gerenciamento de banco de dados relacional.
* SQL: Linguagem para criação e manipulação de dados.
* Visual Studio Code (VSCode): Editor de código utilizado para desenvolver os scripts SQL.

### Como Usar
* Clonar o Repositório
  Primeiro, clone o repositório para sua máquina local:

```bash
git clone https://github.com/seu-usuario/arkham-asylum-db.git
```

* Criar o Banco de Dados
  Use os scripts SQL fornecidos para criar o banco de dados e as tabelas. Execute o arquivo create_tables.sql no PostgreSQL para inicializar a estrutura.

```bash
psql -U seu_usuario -d seu_banco_de_dados -f create_tables.sql
```

* Popular o Banco de Dados
Para popular as tabelas com dados fictícios, você pode usar os arquivos CSV fornecidos ou executar o script populate_data.sql.
