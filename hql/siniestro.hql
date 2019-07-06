CREATE EXTERNAL TABLE IF NOT EXISTS dbseguro.siniestro(
	id_certificado string,
	id_poliza string,
	id_siniestro string,
	id_cliente string,
	fecha_vigencia date,
	fecha_ocurrencia date,
	causa_agrup_2 string,
	tipo_siniestro string,
	reserva double,
	recupero double,
	reserva_neta double
)
COMMENT 'Tabla siniestro'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/datalake/empresa/siniestro'
tblproperties("skip.header.line.count" = "1");

