USE gestao_funcionarios;

-- =========================================================
-- 1. PAÍS
-- =========================================================

INSERT IGNORE INTO pais (nome)
VALUES ('Moçambique');

-- =========================================================
-- 2. PROVÍNCIAS
-- =========================================================

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Maputo Cidade', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Maputo Província', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Gaza', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Inhambane', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Sofala', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Nampula', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Manica', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Tete', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Zambézia', id_pais
FROM pais WHERE nome = 'Moçambique';

INSERT IGNORE INTO provincia (nome, id_pais)
SELECT 'Cabo Delgado', id_pais
FROM pais WHERE nome = 'Moçambique';


-- =========================================================
-- 3. CIDADES
-- =========================================================

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Maputo', id_provincia
FROM provincia
WHERE nome = 'Maputo Cidade';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Matola', id_provincia
FROM provincia
WHERE nome = 'Maputo Província';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Chókwè', id_provincia
FROM provincia
WHERE nome = 'Gaza';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Maxixe', id_provincia
FROM provincia
WHERE nome = 'Inhambane';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Beira', id_provincia
FROM provincia
WHERE nome = 'Sofala';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Nampula', id_provincia
FROM provincia
WHERE nome = 'Nampula';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Chimoio', id_provincia
FROM provincia
WHERE nome = 'Manica';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Tete', id_provincia
FROM provincia
WHERE nome = 'Tete';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Quelimane', id_provincia
FROM provincia
WHERE nome = 'Zambézia';

INSERT IGNORE INTO cidade (nome, id_provincia)
SELECT 'Pemba', id_provincia
FROM provincia
WHERE nome = 'Cabo Delgado';


-- =========================================================
-- 4. CARGOS
-- =========================================================

INSERT IGNORE INTO cargo (cod_cargo, designacao)
VALUES
('C01', 'Técnico de Informática'),
('C02', 'Contabilista'),
('C03', 'Engenheiro Civil'),
('C04', 'Enfermeiro'),
('C05', 'Professor'),
('C06', 'Motorista'),
('C07', 'Gestor de Recursos Humanos'),
('C08', 'Assistente Administrativo');


-- =========================================================
-- 5. FUNÇÕES
-- =========================================================

INSERT IGNORE INTO funcao (cod_funcao, designacao)
VALUES
('F01', 'Tecnologias de Informação'),
('F02', 'Finanças'),
('F03', 'Engenharia'),
('F04', 'Saúde'),
('F05', 'Educação'),
('F06', 'Logística'),
('F07', 'Recursos Humanos'),
('F08', 'Administração');


-- =========================================================
-- 6. POSTOS DE TRABALHO
-- =========================================================

INSERT IGNORE INTO posto_trabalho (nome_posto)
VALUES
('Delegação Beira'),
('Delegação Cabo Delgado'),
('Delegação Gaza'),
('Delegação Inhambane'),
('Delegação Manica'),
('Delegação Matola'),
('Delegação Nampula'),
('Delegação Tete'),
('Delegação Zambézia'),
('Sede Maputo');


-- =========================================================
-- 7. ENDEREÇOS
-- =========================================================

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', 'Julius Nyerere', '245', 'Sommerschield', id_cidade
FROM cidade
WHERE nome = 'Maputo';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Rua', 'da Resistência', '8', 'Polana Caniço8', id_cidade
FROM cidade
WHERE nome = 'Maputo';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', 'Samora Machel', '12', 'Fomento', id_cidade
FROM cidade
WHERE nome = 'Matola';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Rua', '3', '56', 'Chókwè-Sede', id_cidade
FROM cidade
WHERE nome = 'Chókwè';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', 'Eduardo Mondlane', '301', 'Maxixe-Sede', id_cidade
FROM cidade
WHERE nome = 'Maxixe';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', 'Poder Popular', '77', 'Macuti', id_cidade
FROM cidade
WHERE nome = 'Beira';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Rua', 'da Frescura', '19', 'Ponta Gêa', id_cidade
FROM cidade
WHERE nome = 'Beira';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', '25 de Setembro', '150', 'Alto Maé', id_cidade
FROM cidade
WHERE nome = 'Maputo';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Rua', 'do Bagamoyo', '5', 'Muhipiti', id_cidade
FROM cidade
WHERE nome = 'Nampula';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', 'Josina Machel', '200', 'Namahera', id_cidade
FROM cidade
WHERE nome = 'Nampula';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Rua', 'da Base', '33', 'Chaimite', id_cidade
FROM cidade
WHERE nome = 'Beira';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', 'Kwame Nkrumah', '410', 'Coop', id_cidade
FROM cidade
WHERE nome = 'Maputo';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Rua', 'de Chimoio', '67', 'Chingussura', id_cidade
FROM cidade
WHERE nome = 'Chimoio';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', '7 de Setembro', '90', 'Matundo', id_cidade
FROM cidade
WHERE nome = 'Tete';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Rua', 'da Missão', '24', 'Chalaua', id_cidade
FROM cidade
WHERE nome = 'Quelimane';

INSERT IGNORE INTO endereco
(tipo_via, nome_via, numero, bairro, id_cidade)
SELECT 'Avenida', 'Franqueza', '18', 'Chuwaula', id_cidade
FROM cidade
WHERE nome = 'Pemba';


-- =========================================================
-- 8. FUNCIONÁRIOS
-- =========================================================

INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Amélia Fernanda Cossa',
'1985-03-12',
'100234567',
'110100123456A',
'amelia.cossa@empresa.co.mz',
'2015-02-05',
e.id_endereco,
'C01',
'F01',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Sede Maputo'
WHERE e.nome_via = 'Julius Nyerere'
AND e.numero = '245'
AND e.bairro = 'Sommerschield'
AND ci.nome = 'Maputo';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Bernardo Alfredo Machava',
'1979-07-22',
'100345678',
'110100234567B',
'bernardo.machava@empresa.co.mz',
'2010-09-14',
e.id_endereco,
'C02',
'F02',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Sede Maputo'
WHERE e.nome_via = 'da Resistência'
AND e.numero = '8'
AND e.bairro = 'Polana Caniço8'
AND ci.nome = 'Maputo';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Celina Armando Sitoe',
'1990-11-03',
'100456789',
'110200345678C',
'celina.sitoe@empresa.co.mz',
'2018-06-01',
e.id_endereco,
'C08',
'F08',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Matola'
WHERE e.nome_via = 'Samora Machel'
AND e.numero = '12'
AND e.bairro = 'Fomento'
AND ci.nome = 'Matola';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Domingos Paulo Nhantumbo',
'1982-01-30',
'100567890',
'110300456789D',
'domingos.nhantumbo@empresa.co.mz',
'2012-03-10',
e.id_endereco,
'C06',
'F06',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Gaza'
WHERE e.nome_via = '3'
AND e.numero = '56'
AND e.bairro = 'Chókwè-Sede'
AND ci.nome = 'Chókwè';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Eugénia Marta Muchanga',
'1988-05-18',
'100678901',
'110400567890E',
'eugenia.muchanga@empresa.co.mz',
'2016-08-20',
e.id_endereco,
'C04',
'F04',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Inhambane'
WHERE e.nome_via = 'Eduardo Mondlane'
AND e.numero = '301'
AND e.bairro = 'Maxixe-Sede'
AND ci.nome = 'Maxixe';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Fernando José Macuácua',
'1975-09-25',
'100789012',
'110500678901F',
'fernando.macuacua@empresa.co.mz',
'2008-01-15',
e.id_endereco,
'C03',
'F03',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Beira'
WHERE e.nome_via = 'Poder Popular'
AND e.numero = '77'
AND e.bairro = 'Macuti'
AND ci.nome = 'Beira';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Graça Isabel Zunguze',
'1992-12-07',
'100890123',
'110600789012G',
'graca.zunguze@empresa.co.mz',
'2019-02-02',
e.id_endereco,
'C05',
'F05',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Beira'
WHERE e.nome_via = 'da Frescura'
AND e.numero = '19'
AND e.bairro = 'Ponta Gêa'
AND ci.nome = 'Beira';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Hélder António Cuamba',
'1980-04-14',
'100901234',
'110700890123H',
'helder.cuamba@empresa.co.mz',
'2011-11-11',
e.id_endereco,
'C07',
'F07',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Sede Maputo'
WHERE e.nome_via = '25 de Setembro'
AND e.numero = '150'
AND e.bairro = 'Alto Maé'
AND ci.nome = 'Maputo';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Ivete Sara Chirindza',
'1995-06-29',
'101012345',
'110800901234I',
'ivete.chirindza@empresa.co.mz',
'2020-07-03',
e.id_endereco,
'C01',
'F01',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Nampula'
WHERE e.nome_via = 'do Bagamoyo'
AND e.numero = '5'
AND e.bairro = 'Muhipiti'
AND ci.nome = 'Nampula';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'João Baptista Nhaca',
'1978-08-09',
'101123456',
'110900012345J',
'joao.nhaca@empresa.co.mz',
'2009-05-25',
e.id_endereco,
'C02',
'F02',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Nampula'
WHERE e.nome_via = 'Josina Machel'
AND e.numero = '200'
AND e.bairro = 'Namahera'
AND ci.nome = 'Nampula';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Lúcia Ermelinda Bila',
'1991-02-16',
'101234567',
'111000123456K',
'lucia.bila@empresa.co.mz',
'2017-09-19',
e.id_endereco,
'C08',
'F08',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Beira'
WHERE e.nome_via = 'da Base'
AND e.numero = '33'
AND e.bairro = 'Chaimite'
AND ci.nome = 'Beira';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Marcelino Inácio Tembe',
'1983-10-21',
'101345678',
'111100234567L',
'marcelino.tembe@empresa.co.mz',
'2013-04-08',
e.id_endereco,
'C03',
'F03',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Sede Maputo'
WHERE e.nome_via = 'Kwame Nkrumah'
AND e.numero = '410'
AND e.bairro = 'Coop'
AND ci.nome = 'Maputo';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Noémia Alzira Massingue',
'1987-03-04',
'101456789',
'111200345678M',
'noemia.massingue@empresa.co.mz',
'2014-12-12',
e.id_endereco,
'C04',
'F04',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Manica'
WHERE e.nome_via = 'de Chimoio'
AND e.numero = '67'
AND e.bairro = 'Chingussura'
AND ci.nome = 'Chimoio';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Osvaldo Simião Ubisse',
'1976-07-27',
'101567890',
'111300456789N',
'osvaldo.ubisse@empresa.co.mz',
'2006-10-30',
e.id_endereco,
'C06',
'F06',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Tete'
WHERE e.nome_via = '7 de Setembro'
AND e.numero = '90'
AND e.bairro = 'Matundo'
AND ci.nome = 'Tete';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Paulina Fátima Uache',
'1993-01-15',
'101678901',
'111400567890O',
'paulina.uache@empresa.co.mz',
'2021-09-09',
e.id_endereco,
'C05',
'F05',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Zambézia'
WHERE e.nome_via = 'da Missão'
AND e.numero = '24'
AND e.bairro = 'Chalaua'
AND ci.nome = 'Quelimane';


INSERT IGNORE INTO funcionario
(nome, data_nascimento, nuit, bi, email, data_admissao,
 id_endereco, cod_cargo, cod_funcao, id_posto)
SELECT
'Ricardo Manuel Come',
'1981-06-02',
'101789012',
'111500678901P',
'ricardo.come@empresa.co.mz',
'2010-07-17',
e.id_endereco,
'C07',
'F07',
p.id_posto
FROM endereco e
JOIN cidade ci ON e.id_cidade = ci.id_cidade
JOIN posto_trabalho p ON p.nome_posto = 'Delegação Cabo Delgado'
WHERE e.nome_via = 'Franqueza'
AND e.numero = '18'
AND e.bairro = 'Chuwaula'
AND ci.nome = 'Pemba';


-- =========================================================
-- 9. FILHOS
-- =========================================================

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Cátia Cossa'
FROM funcionario WHERE nuit = '100234567';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Nelson Machava'
FROM funcionario WHERE nuit = '100345678';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Ivete Machava'
FROM funcionario WHERE nuit = '100345678';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Suzana Machava'
FROM funcionario WHERE nuit = '100345678';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Paulo Nhantumbo Jr'
FROM funcionario WHERE nuit = '100567890';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Alzira Nhantumbo'
FROM funcionario WHERE nuit = '100567890';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Marta Muchanga'
FROM funcionario WHERE nuit = '100678901';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'José Macuácua'
FROM funcionario WHERE nuit = '100789012';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Beatriz Macuácua'
FROM funcionario WHERE nuit = '100789012';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Adriano Macuácua'
FROM funcionario WHERE nuit = '100789012';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'António Cuamba Jr'
FROM funcionario WHERE nuit = '100901234';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Filomena Cuamba'
FROM funcionario WHERE nuit = '100901234';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Baptista Nhaca Jr'
FROM funcionario WHERE nuit = '101123456';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Ermelinda Bila'
FROM funcionario WHERE nuit = '101234567';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Inácio Tembe Jr'
FROM funcionario WHERE nuit = '101345678';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Rosa Tembe'
FROM funcionario WHERE nuit = '101345678';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Simião Ubisse Jr'
FROM funcionario WHERE nuit = '101567890';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Alcinda Ubisse'
FROM funcionario WHERE nuit = '101567890';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Custódio Ubisse'
FROM funcionario WHERE nuit = '101567890';

INSERT IGNORE INTO filho (id_funcionario, nome)
SELECT id_funcionario, 'Manuel Come Jr'
FROM funcionario WHERE nuit = '101789012';


-- =========================================================
-- 10. TELEFONES
-- =========================================================

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '841234567'
FROM funcionario WHERE nuit = '100234567';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '821234567'
FROM funcionario WHERE nuit = '100234567';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '845678901'
FROM funcionario WHERE nuit = '100345678';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '861122334'
FROM funcionario WHERE nuit = '100456789';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '847890123'
FROM funcionario WHERE nuit = '100567890';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '878901234'
FROM funcionario WHERE nuit = '100567890';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '849012345'
FROM funcionario WHERE nuit = '100678901';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '823456789'
FROM funcionario WHERE nuit = '100789012';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '843456789'
FROM funcionario WHERE nuit = '100789012';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '863456789'
FROM funcionario WHERE nuit = '100789012';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '844567890'
FROM funcionario WHERE nuit = '100890123';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '824567890'
FROM funcionario WHERE nuit = '100890123';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '825678901'
FROM funcionario WHERE nuit = '100901234';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '846789012'
FROM funcionario WHERE nuit = '101012345';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '827890123'
FROM funcionario WHERE nuit = '101123456';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '847890124'
FROM funcionario WHERE nuit = '101123456';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '848901234'
FROM funcionario WHERE nuit = '101234567';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '829012345'
FROM funcionario WHERE nuit = '101345678';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '849012346'
FROM funcionario WHERE nuit = '101345678';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '869012347'
FROM funcionario WHERE nuit = '101345678';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '841122334'
FROM funcionario WHERE nuit = '101456789';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '822233445'
FROM funcionario WHERE nuit = '101567890';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '842233445'
FROM funcionario WHERE nuit = '101567890';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '843344556'
FROM funcionario WHERE nuit = '101678901';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '824455667'
FROM funcionario WHERE nuit = '101789012';

INSERT IGNORE INTO telefone (id_funcionario, numero)
SELECT id_funcionario, '844455667'
FROM funcionario WHERE nuit = '101789012';

