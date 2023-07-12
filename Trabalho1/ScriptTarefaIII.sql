INSERT INTO carros (codigo, placa, marca, modelo, ano, nome_motorista, cor)
VALUES(1, 'IVK0401', 'Renault', 'Duster', 2015, 'Mateus', 'Vermelho');

INSERT INTO carros (codigo, placa, marca, modelo, ano, nome_motorista, cor)
VALUES(2, 'JAY0422', 'Toyota', 'Corolla Cross', 2021, 'Sonia', 'Preto');

INSERT INTO carros (codigo, placa, marca, modelo, ano, nome_motorista, cor)
VALUES(3, 'QPK9345', 'Fiat', 'Mobi', 2019, 'Carolina', 'Preto');

INSERT INTO passageiros (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES (11122233344, 'Neymar', 'neymarjr@gmail.com', 5198456451100, 'floresta', 'pix');

INSERT INTO passageiros (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES (33322211100, 'ViniciusJR', 'viniciusjr@gmail.com', 5198456488800, 'cristal', 'credito');

INSERT INTO passageiros (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES (22211133300, 'Ener Valencia', 'enervalencia@gmail.com', 5112345678000, 'sarandi', 'debito');

INSERT INTO passageiros (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES (44455566677, 'Alexandre Alemao', 'alemaopitanga@gmail.com', 0002345678250, 'restinga', 'dinheiro');

INSERT INTO passageiros (cpf, nome, email, telefone, bairro, meio_pagamento)
VALUES (99988877766, 'Pedro Henrique', 'pedrocuca@gmail.com', 5112345678001, 'menino deus', 'cheque');

-- 10 viagens
-- ANOTAÇÕES DE QUILOMETRAGEM:
-- {FLORESTA-CRISTAL} = 10km
-- {FLORESTA-SARANDI} = 15km
-- {FLORESTA-RESTINGA} = 23km
-- {FLORESTA-MENINO DEUS} = 6km
-- {CRISTAL-SARANDI} = 10km
-- {CRISTAL-RESTINGA} = 16km
-- {CRISTAL-MENINO DEUS} = 10km
-- {SARANDI-RESTINGA} = 26km
-- {SARANDI-MENINO DEUS} = 22km
-- {RESTINGA-MENINO DEUS} = 21km

--viagem 1
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (12, 10, 50, 1);

INSERT INTO urbanas(bairro_partida, fk_viagens_id)
VALUES('floresta', 12);

INSERT INTO interurbanas(taxa_adicional, cidade_destino, fk_viagens_id)
VALUES(2.50, 'porto alegre', 12);

--viagem 2
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (23, 15, 55, 2);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('floresta', 23);

INSERT INTO interurbanas(taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (3.75, 'porto alegre', 23);

--viagem 3
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (24, 23,70, 3);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('floresta', 24);

INSERT INTO interurbanas(taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (5.20, 'porto alegre', 24);

--viagem 4
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (25, 6, 15, 1);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('floresta', 25);

INSERT INTO interurbanas (taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (1.65, 'porto alegre', 25);

--viagem 5
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (27, 10, 50, 2);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('cristal', 27);

INSERT INTO interurbanas (taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (2.50, 'porto alegre', 27);

--viagem 6
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (28, 16, 60, 1);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('cristal', 28);

INSERT INTO interurbanas (taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (3.80, 'porto alegre', 28);

--viagem 7
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (29, 10, 50, 2);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('cristal', 29);

INSERT INTO interurbanas (taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (2.50, 'porto alegre', 29);

--viagem 8
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (30, 26, 100, 1);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('sarandi', 30);

INSERT INTO interurbanas (taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (6.50, 'porto alegre', 30);

--viagem 9
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (31, 22, 80, 2);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('sarandi', 31);

INSERT INTO interurbanas (taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (6.10, 'porto alegre', 31);

--viagem 10
INSERT INTO viagens (id, kms, valor, fk_carros_codigo)
VALUES (32, 21, 65, 3);

INSERT INTO urbanas (bairro_partida, fk_viagens_id)
VALUES ('restinga', 32);

INSERT INTO interurbanas (taxa_adicional, cidade_destino, fk_viagens_id)
VALUES (5.10, 'porto alegre', 32);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(11122233344, 12);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(11122233344, 23);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(11122233344, 24);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(11122233344, 25);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(33322211100, 27);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(33322211100, 28);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(33322211100, 29);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(44455566677, 30);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(44455566677, 31);

INSERT INTO usa(fk_passageiros_cpf, fk_viagens_id)
VALUES(99988877766, 32);