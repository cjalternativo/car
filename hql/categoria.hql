CREATE EXTERNAL TABLE IF NOT EXISTS dbseguro.categoria(
	marcaModelo struct<marca:string,modelo:string>,
	clase string,
	categoria string,
	peso_categoria string,
	modelo_veh_std string,
	cod_categoria string,
	nuevo string
)
COMMENT 'Tabla categoria'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
COLLECTION ITEMS TERMINATED BY ','
MAP KEYS TERMINATED BY ':'
LOCATION '/datalake/empresa/categoria'
tblproperties("skip.header.line.count" = "1");

