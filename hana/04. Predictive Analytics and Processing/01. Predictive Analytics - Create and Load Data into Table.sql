-- Using PAL features in SAP HANA

DROP TABLE "CBASTO"."pa.tb.accountRevenue";

CREATE COLUMN TABLE "CBASTO"."pa.tb.accountRevenue"(
	"ACCOUNTNR" VARCHAR(11),
	"LOCATION" VARCHAR(100),
	"TOTAL_AMOUNT" DOUBLE DEFAULT 0,
	PRIMARY KEY (
		"ACCOUNTNR"
	)
);

--Loading data via INSERTsINSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('82540748399','Netherlands',3850);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('99692723699','Morocco',92);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('98804020299','Israel',176);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('24364537999','Estonia',41528);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('97592208699','South Africa',308);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('55783852899','Niger',332);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('12338489699','Malaysia',582);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('66941296899','Angola',332);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('78341775899','Japan',7780);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('30205810399','Indonesia',665);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('35766575899','Madagascar',616);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('23270858999','Malta',3540);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('91578369899','Bahrain',231);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('76401095499','Central African Republic',412);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('00913274699','Namibia',71);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('50694975399','South Georgia and The South Sandwich Islands',176);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('01488053499','Solomon Islands',878);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('96932672899','Northern Mariana Islands',748);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('91282172899','Liberia',122);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('79787992099','Jordan',80);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('67397439699','El Salvador',539);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('63992562599','Macedonia',57);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('43356492199','San Marino',696);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('51670856799','Sao Tome and Principe',640);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('19947726599','Ukraine',2700);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('99834072799','Ukraine',8064);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('31917565199','French Guiana',27);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('90613141899','Ireland',369);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('75361130899','Guinea',92);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('39763551799','Jersey',385);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('94627738599','Equatorial Guinea',615);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('57356613099','Sao Tome and Principe',354);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('34330084699','Azerbaijan',949);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('02988459599','French Polynesia',418);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('79935287199','Korea, South',15);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('06403930099','Vanuatu',781);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('41841311499','Belarus',82);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('34791974399','Uzbekistan',984);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('24750820299','Ethiopia',791);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('68989297999','Anguilla',589);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('37448014599','Niger',42);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('41325924899','Isle of Man',233);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('83463321899','United Arab Emirates',535);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('87960002399','Albania',800);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('42469535999','Georgia',783);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('18539856499','Djibouti',716);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('32610094899','Cameroon',482);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('78884234499','Guyana',912);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('93904093399','Mauritania',495);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('81519284299','Martinique',387);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('94861577199','Grenada',89);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('23701374899','Sri Lanka',161);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('10334180899','Gambia',473);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('63747550799','Ukraine',3715);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('66384175199','Tokelau',946);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('70471211599','Tokelau',45);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('94537787299','Bosnia and Herzegovina',956);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('41888115799','Thailand',101);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('84851632199','Bonaire, Sint Eustatius and Saba',957);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('12369169799','Romania',323);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('10320338499','Sudan',128);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('23973062599','Philippines',558);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('80234682699','Grenada',212);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('92435601999','Norway',63305);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('05213022999','Samoa',714);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('34385740899','Guam',413);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('93686420399','Niger',957);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('39548974899','Aruba',89);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('14873205199','Guinea-Bissau',485);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('70546477699','Tanzania',364);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('09430444999','Seychelles',323);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('58371537199','Cocos (Keeling) Islands',733);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('25609325299','Tajikistan',167);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('85253147299','Ghana',70);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('90265537999','Peru',96);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('87529168299','Bolivia',642);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('65449829999','Norfolk Island',566);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('75845729799','Jamaica',568);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('04342023699','Germany',55656);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('66802523699','Colombia',899);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('78554702399','Senegal',774);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('57575869099','Tunisia',26);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('09291636899','Burundi',655);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('68688029599','Argentina',790);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('54674462999','Zambia',684);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('07752768499','Bolivia',454);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('63610114499','Samoa',78);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('80322453199','Tajikistan',47);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('01611711299','Latvia',8213);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('05742930199','Curaçao',637);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('78351684399','United States Minor Outlying Islands',969);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('28553427199','Ethiopia',524);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('99534559099','Ukraine',4295);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('75215421499','Uganda',958);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('37984032999','Bermuda',193);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('20604544399','Tanzania',961);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('29957102299','Samoa',4);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('76457446499','Lebanon',72);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('67280243199','Antarctica',503);
INSERT INTO "CBASTO"."pa.tb.accountRevenue" (accountnr,location,total_amount) VALUES ('01625239599','Yemen',902);

MERGE DELTA OF "CBASTO"."pa.tb.accountRevenue";
