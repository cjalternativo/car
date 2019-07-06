CREATE EXTERNAL TABLE IF NOT EXISTS dbseguro.cliente(
	anomes_ivc string,
	id_certificado string,
	fec_ini_vigente date,
	fec_fin_vigente date,
	cod_prod string,
	cobertura_principal string,
	prima_usd_final double,
	tipo_cliente string,
	departamento string,
	marcaModeloAnio struct<marca:string,modelo:string,anio:string>,
	clase_agrupada string,
	sa_usd double,
	uso string,
	gps_slip_2018 string,
	segmento_dashboard_act string,
	sub_canal_seguimiento string,
	categoria_riesgo string,
	edad_asegurado_vigencia int,
	edad_vehiculo_vigencia int,
	region string,
	tipo_ren_cert_aut string,
	genero int
)
COMMENT 'Tabla cliente'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
COLLECTION ITEMS TERMINATED BY ','
MAP KEYS TERMINATED BY ':'
LOCATION '/datalake/empresa/cliente'
tblproperties("skip.header.line.count" = "1");

