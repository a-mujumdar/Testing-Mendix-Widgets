CREATE TABLE "myfirstmodule$productionarea" (
	"id" BIGINT NOT NULL,
	"productionarea" VARCHAR_IGNORECASE(50) NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name")
 VALUES ('a9aea3e5-36d1-4477-95ec-3c4a191d3e0f', 
'MyFirstModule.ProductionArea', 
'myfirstmodule$productionarea');
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('6b00851b-368b-494c-9382-fc3e93f1d672', 
'a9aea3e5-36d1-4477-95ec-3c4a191d3e0f', 
'ProductionArea', 
'productionarea', 
30, 
50, 
'', 
false);
CREATE TABLE "myfirstmodule$ezefregelkreis_productionarea" (
	"myfirstmodule$ezefregelkreisid" BIGINT NOT NULL,
	"myfirstmodule$productionareaid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$ezefregelkreisid","myfirstmodule$productionareaid"),
	CONSTRAINT "uniq_myfirstmodule$ezefregelkreis_productionarea_myfirstmodule$ezefregelkreisid" UNIQUE ("myfirstmodule$ezefregelkreisid"));
CREATE INDEX "idx_myfirstmodule$ezefregelkreis_productionarea_myfirstmodule$productionarea_myfirstmodule$ezefregelkreis" ON "myfirstmodule$ezefregelkreis_productionarea" ("myfirstmodule$productionareaid" ASC,"myfirstmodule$ezefregelkreisid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('3440a2c4-cfda-4218-a81f-ff7ea39179a2', 
'MyFirstModule.EZEFRegelkreis_ProductionArea', 
'myfirstmodule$ezefregelkreis_productionarea', 
'b7806f98-8f2e-42f7-883b-c44f68ea8ee9', 
'a9aea3e5-36d1-4477-95ec-3c4a191d3e0f', 
'myfirstmodule$ezefregelkreisid', 
'myfirstmodule$productionareaid', 
'idx_myfirstmodule$ezefregelkreis_productionarea_myfirstmodule$productionarea_myfirstmodule$ezefregelkreis');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$ezefregelkreis_productionarea_myfirstmodule$ezefregelkreisid', 
'3440a2c4-cfda-4218-a81f-ff7ea39179a2', 
'667c07e8-4ca7-3338-a4dc-3272ac0974d3');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20190722 11:11:10';
