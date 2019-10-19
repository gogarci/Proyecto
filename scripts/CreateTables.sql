alter session set "_ORACLE_SCRIPT"=true;

create table tipos_documentos_usuario(
id number (10,0)primary key not null,
nom_tipo_doc varchar(250),
estado varchar(250),
CONSTRAINT tipos_documentos_usuario_pk PRIMARY KEY (id)
);

create table paises(
id number (10,0)primary key not null,
nom_pais varchar(250),
estado varchar(250),
CONSTRAINT paises_pk PRIMARY KEY (id)
);

create table departamento(
id number (10,0)primary key not null,
nom_depto varchar(250),
id_pais number (10,0)not null,
estado varchar(250),
CONSTRAINT departamento_pk PRIMARY KEY (id),
CONSTRAINT fk_pais foreign key (id_pais) references paises(id)
);

create table municipios(
id number (10,0)primary key not null,
nom_muni varchar(250),
id_dpto number (10,0)not null,
estado varchar(250),
CONSTRAINT municipios_pk PRIMARY KEY (id),
CONSTRAINT fk_dpto foreign key (id_dpto) references departamento(id)
);

create table anios(
id number (10,0)primary key not null,
anio varchar(250),
estado varchar(250),
CONSTRAINT anios_pk PRIMARY KEY (id)
);

create table mes(
id number (10,0)primary key not null,
mes varchar(250),
estado varchar(250),
CONSTRAINT mes_pk PRIMARY KEY (id)
);

create table dia(
id number (10,0)primary key not null,
dia varchar(250),
estado varchar(250),
CONSTRAINT dia_pk PRIMARY KEY (id)
);

create table Nacionalidad(
id number (10,0)primary key not null,
nacionalidad varchar(250),
estado varchar(250),
CONSTRAINT Nacionalidad_pk PRIMARY KEY (id)
);

create table Zona_horarias(
id number (10,0)primary key not null,
Zona_Horaria varchar(250),
estado varchar(250),
CONSTRAINT Zona_horarias_pk PRIMARY KEY (id)
);

create table codigo_postal(
id number (10,0)primary key not null,
codigo_postal varchar(250),
estado varchar(250),
CONSTRAINT codigo_postal_pk PRIMARY KEY (id)
);

create table prefijos(
id number (10,0)primary key not null,
prefijo varchar(250),
id_pais number (10,0)not null,
estado varchar(250),
CONSTRAINT prefijos_pk PRIMARY KEY (id),
CONSTRAINT fk_pais foreign key (id_pais) references paises(id)
);

create table usuarios (
ID number (10,0) not null,
firstname varchar(250),
secondname varchar(250),
middlename varchar(250),
lastname varchar(250),
id_docu number (10,0)not null,
password varchar(250) not null,
estado varchar(250),
CONSTRAINT usuarios_pk PRIMARY KEY (id)
);

create table docu_usuarios (
ID number (10,0) not null,
id_tipo number (10,0)not null,
id_pais number (10,0)not null,
id_anio number (10,0)not null,
id_mes number (10,0)not null,
id_dia number (10,0)not null,
Id_usua number (10,0)not null,
password varchar(250) not null,
estado varchar(250),
CONSTRAINT docu_usuarios_pk PRIMARY KEY (id),
CONSTRAINT fk_tipo foreign key (id_tipo) references tipos_documentos_usuario(id),
CONSTRAINT fk_pais foreign key (id_pais) references paises(id),
CONSTRAINT fk_anio foreign key (id_anio) references anio(id),
CONSTRAINT fk_mes foreign key (id_mes) references mes(id),
CONSTRAINT fk_dia foreign key (id_dia) references dia(id),
CONSTRAINT fk_usua foreign key (id_usua) references usuarios(id)
);

ALTER TABLE usuarios
ADD CONSTRAINT fk_docu foreign key (id_docu) references docu_usuarios(id);

create table limites_depositos_usuarios(
id number (10,0)primary key not null,
id_usuar number (10,0)not null,
limite_diario varchar(250),
limite_semana varchar(250),
limite_mensua varchar(250),
estado varchar(250),
CONSTRAINT limites_depositos_usuarios_pk PRIMARY KEY (id),
CONSTRAINT fk_usua foreign key (id_usua) references usuarios(id)
);

create table preferencias_usuarios(
id number (10,0)primary key not null,
id_usuar number (10,0)not null,
acepta_term_cond varchar(1),
acepta_info_comer varchar(1),
acepta_barrio varchar(1),
cod_bono varchar(250),
acepta_bole_info varchar(1),
acepta_apuesta_dep varchar(1),
acepta_envio_sms varchar(1),
acepta_noti varchar(1),
acepta_aviso_apsues varchar(1),
estado varchar(250),
CONSTRAINT preferencias_usuarios_pk PRIMARY KEY (id),
CONSTRAINT fk_usua foreign key (id_usua) references usuarios(id)
);

create table datos_contacto_usuario(
id number (10,0)primary key not null,
direccion1 varchar(250),
direccion2 varchar(250),
id_paisrec number (10,0)not null,
id_dpto number (10,0)not null,
id_muni number (10,0)not null,
id_codpos number (10,0)not null,
id_prefijo number (10,0)not null,
numcel varchar(250),
email varchar(250),
idioma_email varchar(250),
id_preferencia number (10,0)not null,
estado varchar(250),
CONSTRAINT datos_contacto_usuario_pk PRIMARY KEY (id),
CONSTRAINT  fk_paisrec foreign key (id_paisrec) references paises(id),
CONSTRAINT  fk_dpto foreign key (id_dpto) references departamento(id),
CONSTRAINT  fk_muni foreign key (id_muni) references municipios(id),
CONSTRAINT  fk_codpos foreign key (id_codpos) references codigo_postal(id),
CONSTRAINT  fk_prefijo foreign key (id_prefijo) references prefijos(id),
CONSTRAINT  fk_preferencia foreign key (id_preferencia) references preferencias_usuarios(id)
);

create table datos_usuarios (
id number (10,0) primary key not null,
id_usua number (10,0)not null,
id_naci number (10,0)not null,
id_anionac number (10,0)not null,
id_mesnac number (10,0)not null,
id_dianac number (10,0)not null,
id_paisnac number (10,0)not null,
estado varchar(250),
CONSTRAINT datos_usuarios_pk PRIMARY KEY (id),
CONSTRAINT  fk_usua foreign key (id_usua) references usuarios(id),
CONSTRAINT  fk_naci foreign key (id_naci) references nacionalidad(id),
CONSTRAINT  fk_anionac foreign key (id_anionac) references anio(id),
CONSTRAINT  fk_mesnac foreign key (id_mesnac) references mes(id),
CONSTRAINT  fk_dianac foreign key (id_dianac) references dia(id),
CONSTRAINT  fk_paisnac foreign key (id_paisnac) references paises(id)
);