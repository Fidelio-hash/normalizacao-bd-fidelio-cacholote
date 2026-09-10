-- =========================================================
-- QUERIES DE RECONSTITUIÇÃO DA INFORMAÇÃO ORIGINAL
-- Executar depois de 01_schema.sql e da carga de dados.


-- 1. Funcionário + dados profissionais + localização
SELECT
    f.nome,
    f.nuit,
    f.bi,
    f.email,
    c.designacao AS cargo,
    fn.designacao AS funcao,
    p.nome_posto AS posto_trabalho,
    e.tipo_via,
    e.nome_via,
    e.numero,
    e.bairro,
    ci.nome AS cidade,
    pr.nome AS provincia,
    pa.nome AS pais,
    f.data_admissao
FROM funcionario f
JOIN cargo c ON c.cod_cargo = f.cod_cargo
JOIN funcao fn ON fn.cod_funcao = f.cod_funcao
JOIN posto_trabalho p ON p.id_posto = f.id_posto
JOIN endereco e ON e.id_endereco = f.id_endereco
JOIN cidade ci ON ci.id_cidade = e.id_cidade
JOIN provincia pr ON pr.id_provincia = ci.id_provincia
JOIN pais pa ON pa.id_pais = pr.id_pais
ORDER BY f.nome;

-- 2. Funcionários com os respectivos telefones
SELECT
    f.nome,
    f.nuit,
    t.numero AS telefone
FROM funcionario f
LEFT JOIN telefone t ON t.id_funcionario = f.id_funcionario
ORDER BY f.nome, t.numero;

-- 3. Funcionários com filhos e respetivos dados profissionais
SELECT
    f.nome AS funcionario,
    fi.nome AS filho,
    c.designacao AS cargo,
    fn.designacao AS funcao,
    p.nome_posto AS posto_trabalho
FROM funcionario f
LEFT JOIN filho fi ON fi.id_funcionario = f.id_funcionario
JOIN cargo c ON c.cod_cargo = f.cod_cargo
JOIN funcao fn ON fn.cod_funcao = f.cod_funcao
JOIN posto_trabalho p ON p.id_posto = f.id_posto
ORDER BY f.nome, fi.nome;

-- 4. Uma consulta que reúne os vários grupos de informação.
-- GROUP_CONCAT permite aproximar a apresentação da folha original.
SELECT
    f.nome,
    f.data_nascimento,
    f.nuit,
    f.bi,
    f.email,
    CONCAT(e.tipo_via, ' ', e.nome_via, ', n.º ', e.numero, ', ', e.bairro) AS endereco,
    ci.nome AS cidade,
    pr.nome AS provincia,
    pa.nome AS pais,
    c.designacao AS cargo,
    f.cod_cargo,
    fn.designacao AS funcao,
    f.cod_funcao,
    p.nome_posto AS posto_trabalho,
    f.data_admissao,
    GROUP_CONCAT(DISTINCT fi.nome ORDER BY fi.nome SEPARATOR '; ') AS filhos,
    GROUP_CONCAT(DISTINCT t.numero ORDER BY t.numero SEPARATOR '; ') AS telefones
FROM funcionario f
JOIN endereco e ON e.id_endereco = f.id_endereco
JOIN cidade ci ON ci.id_cidade = e.id_cidade
JOIN provincia pr ON pr.id_provincia = ci.id_provincia
JOIN pais pa ON pa.id_pais = pr.id_pais
JOIN cargo c ON c.cod_cargo = f.cod_cargo
JOIN funcao fn ON fn.cod_funcao = f.cod_funcao
JOIN posto_trabalho p ON p.id_posto = f.id_posto
LEFT JOIN filho fi ON fi.id_funcionario = f.id_funcionario
LEFT JOIN telefone t ON t.id_funcionario = f.id_funcionario
GROUP BY
    f.id_funcionario, f.nome, f.data_nascimento, f.nuit, f.bi, f.email,
    e.tipo_via, e.nome_via, e.numero, e.bairro,
    ci.nome, pr.nome, pa.nome,
    c.designacao, f.cod_cargo, fn.designacao, f.cod_funcao,
    p.nome_posto, f.data_admissao
ORDER BY f.nome;
