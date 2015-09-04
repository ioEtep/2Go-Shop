create database Escondidinho;

use Escondidinho;

create table clientes
(
id_cli int not null auto_increment,
nome_cli varchar(30) not null,
senha_cli varchar(12) not null,
end_cli varchar(30) not null,
num_cli int not null,
compl_cli varchar(30) not null,
bairro_cli varchar(30) not null,
cidade_cli varchar(30) not null,
uf_cli varchar(30) not null,
cep_cli varchar(30) not null,
email_cli varchar(30) not null,
cpf_cli varchar(20) not null
dtnasc_cli date not null,
sex_cli varchar(30) not null,
estciv_cli char(1) not null,
primary key(id_cli),
constraint email_cli_uq unique(email_cli),
constraint cpf_cli_uq unique(cpf_cli),
constraint sex_cli_chk check(sex_cli ("F","M","O")),
constraint estciv_cli_chk check(estciv_cli ("C","S","O")
);

create table pagamento
(
id_pag int not null auto_increment,
forma_pag varchar(30),
primary key (id_pag)
);

create table unidades
(
id_unidade int not null auto_increment,
tipo_unidade varchar (30) not null,
primary key (id_unidade)
);

create table tipos
(
id_tipo int not null auto_increment,
tipo_produto varchar(30) not null,
primary key (id_tipo)
);

create table padaria
(
id_pad int not null auto_increment,
nome_pad varchar(30) not null,
cep_pad varchar(30) not null,
cnpj_pad varchar(30) not null,
fone_pad varchar(15) not null,
email_pad varchar(30) not null,
primary key (id_pad),
constraint cnpj_pad_uq unique(cnpj_pad)
);

create table produtos
(
id_prod int not null auto_increment,
id_pad int not null,
id_unidade int not null,
id_tipo int not null,
nome_prod varchar(30) not null,
descr_prod varchar(50) not null,
valor_prod int not null,
primary key (id_prod),
foreign key (id_pad) references padaria(id_pad),
foreign key (id_unidade) references unidades(id_unidade),
foreign key (id_tipo) references tipos(id_tipo),
constraint ch_prod check(valor_prod >0)
);

create table vendas
(
id_venda int not null auto_increment,
id_cli int not null,
id_pag int not null,
data_venda data not null,
dataent_venda data not null,
valor_venda int not null,
primary key (id_venda),
foreign key (id_cli) references clientes(id_cli),
foreign key (id_pag) references pagamento(id_pag),
constraint ch_venda check(valor_venda>0)
);

create table itens_vendas
(
id_venda int not null,
id_prod int not null,
qtd_itens int not null,
primary key (id_venda,id_prod),
constraint ch_itens chekc(qtd_itens)
);

create table prod_pad
(
id_pad int not null,
id_prod int not null,
primary key (id_pad,id_prod)
);