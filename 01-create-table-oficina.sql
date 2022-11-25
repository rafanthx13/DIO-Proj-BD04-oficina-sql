-- INSERIR DADOS NA COLUNA
insert into endereco
(id_endereco, logradouro, numero, complemento, cep, bairro, estado)
values
(default,'Rua Aratanha','366',default, '23072-470', 'Campo Grande', default),
(default,'Estrada do mendanha','2870','Apart:107, Bloc:10B', '23092-002', 'Bangu', default),
(default,'Algusto Vascocelos','3672',default, '23183-078', 'Padre Miguel', default),
(default,'Estrada Dulce','36','Apart:22', '25437-032', 'Guarulhos', 'SP'),
(default,'Rua Matheus Nunes','52','2º Andar', '25367-032', 'São Paulo', 'SP'),
(default,'Rua Aratanha','15878','Loja A', '25089-890', 'Mauá', 'SP'),
(default,'Rua Aratanha','52',default, '22052-000', 'Curitiba', 'PR');

select * from endereco;

-- INSERIR DADOS NA COLUNA
insert into cliente
(id_cliente, nome_cliente, tipo_cadastro, numero_cadastro, telefone, e_mail, id_endereco_fk)
values
(default,'Décio Santana', 'cpf','104.590.587-77', '21 99525-7801', 'deciosa@gmail.com', '1'),
(default,'Ana Rosa', 'cpf','098564897-90', '(21) 98789-6940', 'anarosa@hotmail.com.br','3'),
(default,'Luana Nogueira', 'cpf','11122233344', '(21) 2145-3345', 'luananog@gmail.com','2'),
(default,'Eletrônica Ita', 'cnpj', '32.667.144/0001-02', '(11) 3267-6666', 'eletronicaita@gmail.com', '4'),
(default,'Casa Maite', 'cnpj','10.555.762/0001-02', '(21) 99678-3240', 'casamaite@gmail.com','6'),
(default,'Zé Ruela Parafusos', 'cnpj','12.444.832/0001-02', '21 3278-4233', 'zrp@gmail.com', '5'),
(default,'Mathues Lasaro', 'cpf','897.643.090-45', '(11) 99785-5643','matlasa@gmail.com', '7');

select * from cliente;

-- INSERIR DADOS NA COLUNA
insert into veiculo
(id_veiculo, marca, modelo, ano, placa, numero_documento, id_cliente_fk, observacao)
values
(default,'BMW', 'BMW Série 4','2020', 'LUZ-6J81', '888303530', '1', null),
(default,'Volkswagen', 'Gol','2006', 'KMF-7P56', '118387630', '2', 'Pintura deteriorada ao redor do carro e amasso na porta motorista'),
(default,'Volkswagen', 'UP','2021', 'LJT-6K66', '868534120', '3', null),
(default,'Mercedes-Benz', 'Caminhão Mb 710', '2008', 'BFA-8S43', '768535643', '4', 'Para-choque dianteiro quebrado'),
(default,'Volkswagen', 'Caminhão 17-230', '2019', 'BFF-6K83', '785644329', '5', 'Farol de milha lado esquerdo quebrado'),
(default,'Volkswagen', 'Caminhão 9.170', '2015', 'BTT-7U31', '777865560', '6', 'Frente batida'),
(default,'Toyota', 'Corolla','2021', 'BEZ-9K16', '777886509', '7', null),
(default,'Toyota', 'Corolla','2020', 'KLI-7P06', '786555444', '1', null);

select * from veiculo;

-- INSERIR DADOS NA COLUNA
insert into colaborador
(id_colaborador, nome_colaborador, cpf_colaborado, cargo_colaborador, telefone)
values
(default,'Carlos Silva', '105.666.687-09', 'Mecânico', '(21) 99780-5500'),
(default,'José Bello', '122.556.887-19', 'Mecânico', '(21) 99791-5760'),
(default,'Marcelo Melo', '345.775.832-00', 'Elétrica', '(21) 98766-1112'),
(default,'Bruno Sereno', '222.789.811-07', 'Elétrica', '(21) 98442-432'),
(default,'Ricardo Nogueira', '078.711.822-06', 'Pintura', '(21) 99776-3322'),
(default,'Felipe Santanna', '111.121.366-08', 'Pintura', '(21) 99555-3481'),
(default,'Jorge Amaral', '223.662.800-11', 'Lanternagem', '(21) 97885-3555'),
(default,'Patrique Machado', '122.644.676-91', 'Lanternagem', '(21) 98115-3447'),
(default,'Fabio Aguiar', '252.009.233-17', 'Consultor Técnico', '(21) 99315-8887'),
(default,'Marcelo Silva', '099.072.443-23', 'Consultor Técnico', '(21) 98311-5547');

select * from colaborador;

-- INSERIR DADOS NA COLUNA
insert into avaliacao_orcamento_servico
(id_avaliacao_orcamento_servico, responsavel_avaliacao_orcamento_servico, tipo_tarefa, data_avaliacao, valor_orcamento_servico, id_veiculo_fk, descricao_orcamento_servico)
values
(default,'Fabio Aguiar', 'revisão periódica', '2022-10-02', '1200.83', '1', 'Manutenção kit-2'),
(default,'Fabio Aguiar', 'revisão periódica', '2022-10-04', '890', '8', 'Manutenção kit-3'),
(default,'Marcelo Silva', 'revisão periódica', '2022-10-04', '978', '7', 'Manutenção kit-2'),
(default,'Marcelo Silva', default, '2022-10-11', '2982.20', '2', 'Manutenção kit-1, lanternagem porta motorista, pintura geral'),
(default,'Fabio Aguiar', 'manuteção', '2022-10-11', '120', '3', 'Troca de pneus'),
(default,'Marcelo Silva', default, '2022-10-11', '1450', '4', 'Troca para novo para-choque'),
(default,'Fabio Aguiar', 'manuteção', '2022-10-12', '32', '5', 'Troca lâmpada farol de milha lado esquerdo');

select * from avaliacao_orcamento_servico;

-- INSERIR DADOS NA COLUNA
insert into equipe_avaliacao
(id_equipe_avaliacao, id_avaliacao_orcamento_servico_fk, id_colaborador_fk)
values
(default, '1', '1'),
(default, '2', '1'),
(default, '3', '2'),
(default, '4', '2'),
(default, '4', '5'),
(default, '4', '7'),
(default, '5', '1'),
(default, '6', '8'),
(default, '7', '7');

select * from equipe_avaliacao;

-- INSERIR DADOS NA COLUNA
insert into peca
(id_peca, nome_peca, codigo_catalago_peca, descrica_peca)
values
(default, 'Filtro de combustível', 'FFF111CC', null),
(default, 'Filtro de óleo', 'FFF222OO', null),
(default, 'Óleo de motor', 'OOO333MM', null),
(default, 'Massa poliéster automotiva', 'MMM444AA', 'Massa de pequenas correções superfície metálica'),
(default, 'Tinta', 'TTT555BB', 'Tinta Branca'),
(default, 'Para choque', 'PPP666CC', 'Para choque frontal'),
(default, 'Farol de milha', 'FFF777MM', null),
(default, 'Lâmpada 12V', 'LLL888LL', 'Lâmpada farol de milha banca 12V');

select * from peca;

-- INSERIR DADOS NA COLUNA
insert into os
(id_os, status_confirmacao_cliente, data_inicio_execucao, data_termino_execucao, id_avaliacao_orcamento_servico_fk, observacoes_adicionais)
values
(default, 'Autorizado', '2022-10-02', '2022-10-03', '1', null),
(default, 'Autorizado', '2022-10-04', null, '2', null),
(default, 'Não autorizado', '2022-10-04', '2022-10-04', '3', null),
(default, 'Autorizado', '2022-10-11', '2022-10-11', '6', null),
(default, 'Não autorizado', '2022-10-12', null, '7', 'Trocar farol de milha por completo');

select * from os;

-- INSERIR DADOS NA COLUNA
insert into solicitacao_peca
(id_solicitacao_peca, quantidade_peca, valor_unitario_peca, id_avaliacao_orcamento_servico_fk, id_os_fk, id_peca_fk)
values
(default, '1', '52.80', '1', null, '1'),
(default, '1', '66.20', '1', null, '2'),
(default, '4', '32.40', '1', null, '3'),
(default, '1', '66.20', '2', null, '2'),
(default, '4', '32.40', '2', null, '3'),
(default, '1', '52.80', '3', null, '1'),
(default, '1', '66.20', '3', null, '2'),
(default, '4', '32.40', '3', null, '3'),
(default, '1', '52.80', '4', null, '1'),
(default, '1', '66.20', '4', null, '2'),
(default, '4', '32.40', '4', null, '3'),
(default, '5', '26', '4', null, '4'),
(default, '1', '96', '4', null, '5'),
(default, '1', '876.78', '6', null, '6'),
(default, '1', '16', '7', null, '8'),
(default, '1', '78.60', null, '5', '7');

select * from solicitacao_peca;
-- =======================================================================
select * from endereco;
select * from cliente;
select * from veiculo;
select * from colaborador;
select * from avaliacao_orcamento_servico;
select * from equipe_avaliacao;
select * from peca;
select * from os;
select * from solicitacao_peca;
