# Normalização de Base de Dados — Sistema de Gestão de Funcionários

Projeto da disciplina de Bases de Dados — Universidade Licungo.

## Objetivo
Normalizar os dados de funcionários fornecidos numa folha de cálculo, passando de 0FN para 1FN, 2FN, 3FN e 4FN, e implementar o esquema final em MySQL.

## Estrutura
- `documentos/Trabalho_Normalizacao_Funcionarios.docx` — análise e justificação das formas normais.
- `diagramas/04_MER.mmd` — Modelo Entidade-Relacionamento em Mermaid.
- `sql/01_schema.sql` — criação da base de dados e tabelas.
- `sql/02_queries.sql` — consultas JOIN para reconstituição.
- `sql/03_dados_exemplo.sql` — carga de dados baseada na folha fornecida.

## Ordem de execução no MySQL
1. Execute `01_schema.sql`.
2. Execute `03_dados_exemplo.sql` se quiser carregar os dados de demonstração.
3. Execute `02_queries.sql`.

## Normalização
- **1FN:** elimina grupos repetitivos de filhos e telefones e garante atomicidade.
- **2FN:** elimina dependências parciais.
- **3FN:** separa cargos, funções e localização para eliminar dependências transitivas.
- **4FN:** separa filhos e telefones por serem conjuntos multivalorados independentes.

## MER
O ficheiro `.mmd` pode ser aberto em ferramentas compatíveis com Mermaid ou renderizado no GitHub.

## Vídeo
No momento da submissão, adicionar aqui o link do vídeo do YouTube definido como “não listado”, se necessário.
