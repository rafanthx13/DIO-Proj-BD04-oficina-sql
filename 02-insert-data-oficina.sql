-- CRIAR BANCO DE DADOS COM CARACTERES ESPECIAIS (ACENTUAÇÃO)
create database oficina_mecanica
default character set utf8
default collate utf8_general_ci;

drop database oficina_mecanica;

show databases;

-- ACESSAR BANCO DE DADO
use oficina_mecanica;

-- CRIAR NOVA TABELA "endereco"
create table if not exists endereco (
id_endereco INT not null auto_increment primary key,
logradouro VARCHAR(50) not null,
numero VARCHAR(10) not null default'Sem número',
complemento VARCHAR(45) not null default'Sem complemento',
cep VARCHAR(9) not null,
bairro VARCHAR(45) not null,
estado VARCHAR(2) not null default'RJ'
) default charset=utf8;

-- VISUALIZAR TABELA
describe endereco;

-- CRIAR NOVA TABELA "cliente"
create table if not exists cliente (
id_cliente INT not null auto_increment primary key,
nome_cliente VARCHAR(60) not null,
tipo_cadastro ENUM('cpf', 'cnpj') not null default'cpf',
numero_cadastro VARCHAR(18) not null unique,
telefone VARCHAR(15) not null unique,
e_mail VARCHAR(60) not null unique,
id_endereco_fk INT not null,
foreign key (id_endereco_fk) references endereco (id_endereco)
) default charset=utf8;

-- VISUALIZAR TABELA
describe cliente;


-- CRIAR NOVA TABELA "veiculo"
create table if not exists veiculo (
id_veiculo INT not null auto_increment primary key,
marca VARCHAR(45) not null,
modelo VARCHAR(45) not null,
ano YEAR not null,
placa VARCHAR(8) not null unique,
numero_documento INT unsigned not null unique,
id_cliente_fk INT not null,
observacao TEXT,
foreign key (id_cliente_fk) references cliente (id_cliente)
) default charset=utf8;

-- VISUALIZAR TABELA
describe veiculo;

-- CRIAR NOVA TABELA "colaborador"
create table if not exists colaborador (
id_colaborador INT not null auto_increment primary key,
nome_colaborador VARCHAR(60) not null,
cpf_colaborado VARCHAR(14) not null unique,
cargo_colaborador VARCHAR(30) not null,
telefone VARCHAR(15) not null unique
) default charset=utf8;

-- VISUALIZAR TABELA
describe colaborador;

-- CRIAR NOVA TABELA "avaliacao_orcamento_servico"
create table if not exists avaliacao_orcamento_servico (
id_avaliacao_orcamento_servico INT not null auto_increment primary key,
responsavel_avaliacao_orcamento_servico VARCHAR(45) not null,
tipo_tarefa ENUM('revisão periódica', 'manuteção') not null default 'manuteção',
data_avaliacao DATE not null,
valor_orcamento_servico DECIMAL(9,2) not null,
id_veiculo_fk INT not null,
descricao_orcamento_servico TEXT,
foreign key (id_veiculo_fk) references veiculo (id_veiculo)
) default charset=utf8;

-- VISUALIZAR TABELA
describe avaliacao_orcamento_servico;

-- CRIAR NOVA TABELA "equipe_avaliacao"
create table if not exists equipe_avaliacao (
id_equipe_avaliacao INT not null auto_increment primary key,
id_avaliacao_orcamento_servico_fk INT not null,
id_colaborador_fk INT not null,
foreign key (id_avaliacao_orcamento_servico_fk) references avaliacao_orcamento_servico (id_avaliacao_orcamento_servico),
foreign key (id_colaborador_fk) references colaborador (id_colaborador)
) default charset=utf8;

-- VISUALIZAR TABELA
describe equipe_avaliacao;

-- CRIAR NOVA TABELA "os"
create table if not exists os (
id_os INT not null auto_increment primary key,
status_confirmacao_cliente ENUM('Autorizado', 'Não autorizado') not null default'Não autorizado',
data_inicio_execucao DATE not null,
data_termino_execucao DATE,
id_avaliacao_orcamento_servico_fk INT not null unique,
observacoes_adicionais TEXT,
foreign key (id_avaliacao_orcamento_servico_fk) references avaliacao_orcamento_servico (id_avaliacao_orcamento_servico)
) default charset=utf8;

-- VISUALIZAR TABELA
describe os;

-- CRIAR NOVA TABELA "peca"
create table if not exists peca (
id_peca INT not null auto_increment primary key,
nome_peca VARCHAR(30) not null,
codigo_catalago_peca VARCHAR(15) unique not null,
descrica_peca TEXT
) default charset=utf8;

-- VISUALIZAR TABELA
describe peca;

-- CRIAR NOVA TABELA "solicitacao_peca"
create table if not exists solicitacao_peca (
id_solicitacao_peca INT not null auto_increment primary key,
quantidade_peca INT unsigned not null,
valor_unitario_peca DECIMAL(8,2) not null,
id_avaliacao_orcamento_servico_fk INT,
id_os_fk INT,
id_peca_fk INT not null,
foreign key (id_avaliacao_orcamento_servico_fk) references avaliacao_orcamento_servico (id_avaliacao_orcamento_servico),
foreign key (id_os_fk) references os (id_os),
foreign key (id_peca_fk) references peca (id_peca)
) default charset=utf8;

-- VISUALIZAR TABELA
describe solicitacao_peca;

-- APAGAR TABELA
drop table solicitacao_peca;







