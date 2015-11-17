create database Escondidinho;

use Escondidinho;

create table empresa
(
id_emp int not null auto_increment,
nome_emp varchar(30) not null,
nomeR_emp varchar(30) not null,
login_emp varchar(20) not null,
senha_emp varchar(12) not null,
cidade_emp varchar(30),
uf_emp varchar(30),
email_emp varchar(30) not null,
cnpj_emp varchar(20) not null,
primary key (id_emp),
constraint email_emp_uq unique(email_emp),
constraint cnpj_emp_uq unique(cnpj_emp)
);

create table clientes
(
id_cli int not null auto_increment,
nome_cli varchar(10) not null,
nome2_cli varchar(30) not null,
login_cli varchar(20) not null,
senha_cli varchar(12) not null,
end_cli varchar(30),
num_cli int not null,
bairro_cli varchar(30),
cidade_cli varchar(30),
uf_cli varchar(30),
cep_cli varchar(30) not null,
email_cli varchar(30) not null,
cpf_cli varchar(20) not null,
dtnasc_cli date,
sex_cli varchar(30),
celular_cli varchar(20),
primary key(id_cli),
constraint email_cli_uq unique(email_cli),
constraint cpf_cli_uq unique(cpf_cli),
constraint login_cli_uq unique(login_cli),
constraint sex_cli_chk check(sex_cli ('F','M'))
);

create table Login
(
id_log int auto_increment,
nome_log varchar(30) not null,
senha_log varchar(15) not null,
primary key(id_log)
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
id_emp int not null,
id_cli int not null,
id_pag int not null,
data_venda date not null,
dataent_venda date not null,
valor_venda int not null,
primary key (id_venda),
foreign key (id_emp) references empresa(id_emp),
foreign key (id_cli) references clientes(id_cli),
foreign key (id_pag) references pagamento(id_pag),
constraint ch_venda check ( valor_venda>0 )
);

create table itens_vendas
(
id_venda int not null,
id_prod int not null,
qtd_itens int not null,
primary key (id_venda,id_prod),
constraint ch_itens check(qtd_itens)
);

create table prod_pad
(
id_pad int not null,
id_prod int not null,
primary key (id_pad,id_prod)
);
