CREATE TABLE TIPOS_DOCUMENTOS_USUARIOS(
ID             NUMBER(10,0) PRIMARY KEY,
TIPO_DOCUMENTO VARCHAR(250)NOT NULL,
ESTADO         VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;


CREATE TABLE PAISES(
ID          NUMBER (10,0) PRIMARY KEY,
NOMBRE_PAIS VARCHAR(250) NOT NULL,
ESTADO      VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE DEPARTAMENTOS(
ID                   NUMBER(10,0) PRIMARY KEY,
NOMBRE_DEPARTAMENTO  VARCHAR(250) NOT NULL,
ID_PAIS              NUMBER(10,0) NOT NULL,
ESTADO               VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE MUNICIPIOS(
ID               NUMBER(10,0) PRIMARY KEY,
NOMBRE_MUNICIPIO VARCHAR(250) NOT NULL,
ID_DEPARTAMENTO  NUMBER(10,0) NOT NULL,
ESTADO           VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE ANOS(
ID     NUMBER(10,0) PRIMARY KEY,
ANO    VARCHAR(250) NOT NULL,
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE MESES(
ID     NUMBER(10,0) PRIMARY KEY,
MES    VARCHAR(250) NOT NULL,
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE DIAS(
ID     NUMBER(10,0) PRIMARY KEY,
DIA    VARCHAR(250) NOT NULL,
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE NACIONALIDADES(
ID           NUMBER(10,0) PRIMARY KEY,
NACIONALIDAD VARCHAR(250) NOT NULL,
ESTADO       VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE ZONAS_HORARIAS(
ID NUMBER(10,0) PRIMARY KEY,
ZONA_HORARIO VARCHAR(250) NOT NULL,
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE CODIGOS_POSTALES(
ID            NUMBER(10,0) PRIMARY KEY,
CODIGO_POSTAL VARCHAR(250) NOT NULL,
ESTADO        VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE PREFIJOS(
ID      NUMBER(10,0) PRIMARY KEY,
PREFIJO VARCHAR(250),
ID_PAIS NUMBER(10,0) NOT NULL,
ESTADO  VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE USUARIOS(
ID         NUMBER(10,0) PRIMARY KEY,
NOMBRE1    VARCHAR(250) NOT NULL,
NOMBRE2    VARCHAR(250),
APELLIDO1  VARCHAR(250) NOT NULL,
APELLIDO2  VARCHAR(250) NOT NULL,
TITULO     VARCHAR(250) NOT NULL,
CONTRASENA VARCHAR(250) NOT NULL,
ESTADO     VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE DOCUMENTOS_USUARIOS(
ID         NUMBER(10,0) PRIMARY KEY,
ID_TIPO    NUMBER(10,0) NOT NULL,
ID_PAIS    NUMBER(10,0) NOT NULL,
ID_ANO     NUMBER(10,0) NOT NULL,
ID_MES     NUMBER(10,0) NOT NULL,
ID_DIA     NUMBER(10,0) NOT NULL,
ID_USUARIO NUMBER(10,0) NOT NULL,
ESTADO     VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;


CREATE TABLE LIMITES_DEPOSITOS_USUARIOS(
ID NUMBER(10,0) PRIMARY KEY,
ID_USUARIO                 NUMBER(10,0) NOT NULL,
LIMITE_DIARIO_ANTERIOR     VARCHAR(250),
LIMITE_DIARIO_ACTUAL       VARCHAR(250),
FECHA_ACTUALIZACION_DIA    TIMESTAMP,
LIMITE_SEMANA_ANTERIOR     VARCHAR(250),
LIMITE_SEMANA_ACTUAL       VARCHAR(250),
FECHA_ACTUALIZACION_SEMANA TIMESTAMP,
LIMITE_MENSUAL_ANTERIOR    VARCHAR(250),
LIMITE_MENSUAL_ACTUAL      VARCHAR(250),
FECHA_ACTUALIZACION_MES    TIMESTAMP,
ESTADO                     VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE PREFERENCIAS_USUARIOS(
ID NUMBER(10,0) PRIMARY KEY,
ID_USUARIO NUMBER(10,0) NOT NULL,
ACEPTA_TERMINOS_CONDICIONES NUMBER(1,0),
ACEPTA_INFORMACION_COMERCIAL NUMBER(1,0),
ACEPTA_BARRIO NUMBER(1,0),
ID_BONO NUMBER(10,0),
ACEPTA_BOLETIN_INFORMATIVO NUMBER(1,0),
ACEPTA_CORREO_APUESTAS NUMBER(1,0),
ACEPTA_ENVIO_SMS NUMBER(1,0),
ACEPTA_NOTIFICACIONES NUMBER(1,0),
ACEPTA_AVISOS_BOLETA_APUESTA NUMBER(1,0),
LIMITE_APUESTAS_DIARIA NUMBER(10,2),
LIMITE_APUESTAS_SEMANAL NUMBER(10,2),
LIMITE_APUESTAS_MENSUAL NUMBER(10,2),
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;
	

CREATE TABLE DATOS_CONTACTOS_USUARIOS(
ID              NUMBER(10,0) PRIMARY KEY,
DIRECCION1      VARCHAR(250) NOT NULL,
DIRECCION2      VARCHAR(250),
ID_PAIS         NUMBER(10,0) NOT NULL,
ID_DEPARTAMENTO NUMBER(10,0) NOT NULL,
ID_MUNICIPIO    NUMBER(10,0) NOT NULL,
ID_PREFIJO      NUMBER(10,0) NOT NULL,
CELULAR         VARCHAR(250) NOT NULL,
EMAIL           VARCHAR(250) NOT NULL,
IDIOMA_EMAIL    VARCHAR(250) NOT NULL,
ID_PREFERENCIA  NUMBER(10,0) NOT NULL,
ESTADO          VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;


CREATE TABLE DATOS_USUARIOS(
ID               NUMBER(10,0) PRIMARY KEY,
ID_USUARIO       NUMBER(10,0) NOT NULL,
ID_NACIONALIDAD  NUMBER(10,0) NOT NULL,
ID_ANO           NUMBER(10,0) NOT NULL,
ID_MES           NUMBER(10,0) NOT NULL,
ID_DIA           NUMBER(10,0) NOT NULL,
ID_PAIS          NUMBER(10,0) NOT NULL,
ID_ZONA_HORARIA  NUMBER(10,0) NOT NULL,
ESTADO           VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE APUESTAS(
ID             NUMBER(10,0) PRIMARY KEY,
ID_USUARIO     NUMBER(10,0) NOT NULL,
NOMBRE_USUARIO VARCHAR(250) NOT NULL,
FECHA_APUESTA  TIMESTAMP NOT NULL,
VALOR_APOSTADO NUMBER(10,2) NOT NULL,
ESTADO         VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE ESTADOS_APUESTAS(
ID     NUMBER(10,0) PRIMARY KEY,
ESTADO_APUESTA VARCHAR(250) NOT NULL,
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE EQUIPOS_APUESTAS(
ID     NUMBER(10,0) PRIMARY KEY,
EQUIPO VARCHAR(250) NOT NULL,
ESTADO VARCHAR(250)NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE TIPOS_APUESTAS(
ID      NUMBER(10,0) PRIMARY KEY,
TIPO    VARCHAR(250) NOT NULL,
OPCION1 NUMBER(3,2),
OPCION2 NUMBER(3,2),
OPCION3 NUMBER(3,2),
ESTADO  VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE DETALLES_APUESTAS(
ID                NUMBER(10,0) PRIMARY KEY,
ID_APUESTA        NUMBER(10,0) NOT NULL,
ID_CUOTA          NUMBER(10,0) NOT NULL,
ID_ESTADO_APUESTA NUMBER(10,0) NOT NULL,
VALOR_TOTAL       NUMBER(10,2) NOT NULL,
VALOR_PAGO_MAXIMO NUMBER(10,2) NOT NULL,
ESTADO            VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;
	
CREATE TABLE BONOS(
ID           NUMBER(10,0) PRIMARY KEY,
CODIGO       VARCHAR(250) NOT NULL,
FECHA_INICIO TIMESTAMP NOT NULL,
FECHA_FIN    TIMESTAMP NOT NULL,
ESTADO       VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE CUOTAS(
ID              NUMBER(10,0) PRIMARY KEY,
ID_PARTIDO      NUMBER(10,0) NOT NULL,
ID_TIPO_APUESTA NUMBER(10,0) NOT NULL,
ESTADO          VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;
	
CREATE TABLE TIPO_MEDIOS_PAGOS(
ID           NUMBER(10,0) PRIMARY KEY,
NOMBRE       VARCHAR(250) NOT NULL,
MONTO_MINIMO NUMBER(10,2) NOT NULL,
MONTO_MAXIMO NUMBER(10,2) NOT NULL,
ESTADO       VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE PARTIDOS(
ID                     NUMBER(10,0) PRIMARY KEY,
ID_EQUIPO_LOCAL        NUMBER(10,0) NOT NULL,
ID_EQUIPO_VISITANTE    NUMBER(10,0) NOT NULL,
FECHA_PARTIDO          TIMESTAMP NOT NULL,
ESTADO_PARTIDO         VARCHAR(250) NOT NULL,
GOLES_EQUIPO_LOCAL     NUMBER(2,0) NOT NULL,
GOLES_EQUIPO_VISITANTE NUMBER(2,0) NOT NULL,
GANADOR_1_TIEMPO       VARCHAR(1) NOT NULL,
GANADOR_2_TIEMPO       VARCHAR(1) NOT NULL,
ESTADO                 VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE LIMITES_APUESTAS_USUARIOS(
ID                             NUMBER(10,0)PRIMARY KEY,
LIMITE_DIARIO_ANTERIOR         NUMBER(10,2) NOT NULL,
LIMITE_DIARIO_ACTUAL           NUMBER(10,2) NOT NULL,
FECHA_ACTUAL_DIA               TIMESTAMP NOT NULL,
LIMITE_SEMANA_ANTERIOR         NUMBER(10,2) NOT NULL,
LIMITE_SEMANA_ACTUAL           NUMBER(10,2) NOT NULL,
FECHA_ACTUAL_SEMANA            TIMESTAMP NOT NULL,
LIMITE_MES_ANTERIOR            NUMBER(10,2) NOT NULL,
LIMITE_MES_ACTUAL              NUMBER(10,2) NOT NULL,
FECHA_ACTUAL_MENSUAL           NUMBER(10,2) NOT NULL,
LIMITE_PERDIDA_DIARIO_ANTERIOR NUMBER(10,2) NOT NULL,
LIMITE_PERDIDA_DIARIO_ACTUAL   NUMBER(10,2) NOT NULL,
FECHA_ACTUAL_DIARIO_PERDIDA    NUMBER(10,2) NOT NULL,
LIMITE_PERDIDA_SEMANA_ANTERIOR NUMBER(10,2) NOT NULL,
LIMITE_PERDIDA_SEMANA_ACTUAL   NUMBER(10,2) NOT NULL,
FECHA_ACTUAL_SEMANA_PERDIDA    NUMBER(10,2) NOT NULL,
LIMITE_PERDIDA_MES_ANTERIOR    NUMBER(10,2) NOT NULL,
LIMITE_PERDIDA_MES_ACTUAL      NUMBER(10,2) NOT NULL,
FECHA_ACTUAL_MES_PERDIDA       NUMBER(10,2) NOT NULL,
TIEMPO_ACTIVIDAD_SESSION       NUMBER(2,0) NOT NULL,
ID_LIMITES_APUESTAS            NUMBER(10,0) NOT NULL,
ESTADO                         VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE DEPOSITOS(
ID_DEPOSITO NUMBER (10,0) PRIMARY KEY NOT NULL,
ID_USUARIO NUMBER (10,0) NOT NULL,
ID_MEDIOPAGO NUMBER (10,0) NOT NULL,
VALOR_DEPOSITO NUMBER (10,2),
FECHA_TRANSACCION TIMESTAMP,
ID_ESTADODEPOSITO NUMBER (10,0) NOT NULL,
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE ESTADOS_DEPOSITO(
ID_ESTADO_DEPOSITO NUMBER (10,0) PRIMARY KEY NOT NULL,
NOMBRE_ESTADO VARCHAR(250),
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE RETIROS(
ID_RETIRO NUMBER (10,0) PRIMARY KEY NOT NULL,
FECHA_SOLICITUD TIMESTAMP,
FECHA_DESEMBOLSO TIMESTAMP,
BANCO VARCHAR(250),
NRO_CUENTA VARCHAR(250),
ID_USUARIO NUMBER (10,0),
ID_REQUSITOS_DESEMBOLSO NUMBER (10,0),
VALOR_RETIRO NUMBER(10,2) NOT NULL,
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;

CREATE TABLE AUDITORIA(
ID_AUDITORIA NUMBER (10,0) PRIMARY KEY NOT NULL,
DATE_TIME TIMESTAMP,
TABLA VARCHAR(250),
RECORD_ID NUMBER(10,0) NOT NULL,
ACTION VARCHAR(250),
USUARIO VARCHAR(250),
IP VARCHAR(250)
)TABLESPACE BET_AUDITING;

CREATE TABLE REQUISITOS_DESEMBOLSO(
ID_REQUSITOS_DESEMBOLSO NUMBER(10,0) PRIMARY KEY NOT NULL,
ID_USUARIO NUMBER(10,0) NOT NULL,
FACTURA_SERVICIOS_PUBLICOS NUMBER(1,0),
COMPROBANTE_DEPOSITO NUMBER(1,0),
IDENTIFICACION NUMBER(1,0),
FOTO_CON_CC NUMBER(1,0),
TAMAÑO_FACTURA NUMBER(4,0),
TAMAÑO_COMPROBANTE NUMBER(4,0),
TAMAÑO_IDENTIFICACION NUMBER(4,0),
TAMAÑO_FOTO_CON_CC NUMBER(4,0),
EXTENSION_FACTURA VARCHAR(3),
EXTENSION_COMPROBANTE VARCHAR(3),
EXTENSION_IDENTIFICACION VARCHAR(3),
EXTENSION_FOTO_CON_CC VARCHAR(3),
URL_FACTURA VARCHAR(250),
URL_COMPROBANTE VARCHAR(250),
URL_IDENTIFICACION VARCHAR(250),
URL_FOTO_CON_CC VARCHAR(250),
ESTADO VARCHAR(250) NOT NULL
)TABLESPACE BET_ITM;
